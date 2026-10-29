CREATE DATABASE IF NOT EXISTS valorisation;
USE valorisation;


-- 1. CRÉATION DES TABLES

DROP TABLE IF EXISTS joueurs;
CREATE TABLE joueurs (
  id_projet       BIGINT,
  fb_id           BIGINT PRIMARY KEY,
  tm_id           DOUBLE,
  fb_name         VARCHAR(120),
  fb_league       VARCHAR(40),
  fb_position     CHAR(1),
  age             DOUBLE,
  tm_club_name    VARCHAR(80),
  fb_minutes      INT,
  cote_cible      DOUBLE,
  cote_predite    DOUBLE,
  ecart_euro      DOUBLE,
  ecart_pct       DOUBLE,
  ecart_log       DOUBLE,
  multiplicateur  DOUBLE,
  grand_club      TINYINT,
  salaire_an_gbp  DOUBLE,
  annees_contrat  DOUBLE
);

DROP TABLE IF EXISTS joueurs_salaire;
CREATE TABLE joueurs_salaire (
  fb_id           BIGINT,
  fb_name         VARCHAR(120),
  nom_norm        VARCHAR(120),
  fb_league       VARCHAR(40),
  cote_cible      DOUBLE,
  salaire_an_gbp  DOUBLE,
  annees_contrat  DOUBLE
);

DROP TABLE IF EXISTS dim_poste;
CREATE TABLE dim_poste (
  code    CHAR(1) PRIMARY KEY,
  libelle VARCHAR(20)
);
INSERT INTO dim_poste VALUES
  ('F', 'Attaquant'), ('M', 'Milieu'), ('D', 'Défenseur'), ('G', 'Gardien');

DROP TABLE IF EXISTS dim_ligue;
CREATE TABLE dim_ligue (
  fb_league VARCHAR(40) PRIMARY KEY,
  pays      VARCHAR(20)
);
INSERT INTO dim_ligue VALUES
  ('Premier League', 'Angleterre'), ('LaLiga', 'Espagne'), ('Serie A', 'Italie'),
  ('Bundesliga', 'Allemagne'), ('Ligue 1', 'France');


-- 2. JOINTURES

SELECT l.pays,
       COUNT(*) AS nb_joueurs,
       ROUND(AVG(j.cote_cible) / 1000000, 1) AS cote_moyenne_m
FROM joueurs j
JOIN dim_ligue l ON j.fb_league = l.fb_league
GROUP BY l.pays
ORDER BY cote_moyenne_m DESC;

SELECT l.pays,
       ROUND(AVG(s.salaire_an_gbp) / 1000000, 2) AS salaire_moyen_m_gbp
FROM joueurs j
JOIN joueurs_salaire s ON j.fb_id = s.fb_id
JOIN dim_ligue l       ON j.fb_league = l.fb_league
WHERE s.salaire_an_gbp IS NOT NULL
GROUP BY l.pays
ORDER BY salaire_moyen_m_gbp DESC;


-- 3. JOUEURS LES PLUS SURCOTÉS

SELECT j.fb_name, j.tm_club_name, p.libelle AS poste,
       ROUND(j.multiplicateur, 1) AS marche_sur_regle
FROM joueurs j
JOIN dim_poste p ON j.fb_position = p.code
ORDER BY j.multiplicateur DESC
LIMIT 8;

WITH rang AS (
  SELECT l.pays, j.fb_name, j.multiplicateur,
         RANK() OVER (PARTITION BY l.pays ORDER BY j.multiplicateur DESC) AS rg
  FROM joueurs j
  JOIN dim_ligue l ON j.fb_league = l.fb_league
)
SELECT pays, fb_name, ROUND(multiplicateur, 1) AS marche_sur_regle
FROM rang
WHERE rg = 1;


-- 4. EFFET DU CONTRAT

WITH classe AS (
  SELECT ROUND(s.annees_contrat) AS annees,
         j.cote_cible,
         j.multiplicateur,
         ROW_NUMBER() OVER (PARTITION BY ROUND(s.annees_contrat) ORDER BY j.cote_cible)     AS rn_cote,
         ROW_NUMBER() OVER (PARTITION BY ROUND(s.annees_contrat) ORDER BY j.multiplicateur) AS rn_multi,
         COUNT(*)     OVER (PARTITION BY ROUND(s.annees_contrat))                           AS n
  FROM joueurs j
  JOIN joueurs_salaire s ON j.fb_id = s.fb_id
  WHERE s.annees_contrat IS NOT NULL
)
SELECT annees,
       MAX(n) AS nb_joueurs,
       ROUND(AVG(CASE WHEN rn_cote  IN ((n + 1) DIV 2, (n + 2) DIV 2) THEN cote_cible END) / 1000000, 1) AS cote_mediane_m,
       ROUND(AVG(CASE WHEN rn_multi IN ((n + 1) DIV 2, (n + 2) DIV 2) THEN multiplicateur END), 2)       AS multiplicateur_median
FROM classe
GROUP BY annees
ORDER BY annees;
