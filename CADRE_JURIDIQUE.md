# Cadre juridique du projet

Ce projet estime la valeur de marché de joueurs de football. Derrière chaque chiffre, il y a des règles de droit : le prix d'un joueur dépend de son contrat, des règles de transfert et de son image. Les données utilisées, elles, concernent des personnes réelles et viennent de bases protégées.

Cette note traite les deux versants : **le fond** (ce que le droit explique dans les résultats) et **la forme** (dans quel cadre ces données ont été collectées, traitées et publiées).

*Rédigée par une data analyst formée en droit du sport et en droit des affaires. Ce n'est pas un avis juridique. État du droit : octobre 2026.*

---

## Partie 1 : le fond. Ce que le droit explique dans les résultats

### 1.1 Le contrat fait le prix : pourquoi une année de contrat vaut environ +14 %

**Le constat du projet.** À âge, stats, poste et championnat égaux, un joueur sous contrat pour 4 ans vaut environ 1,65 fois un joueur en fin de contrat (+14 % par année restante environ).

**L'explication juridique.**
- **L'arrêt Bosman** (CJCE, 15 décembre 1995, C-415/93) : un joueur en fin de contrat peut rejoindre un club d'un autre État membre sans indemnité de transfert. Le club qui le détient n'a donc plus rien à vendre. La valeur « transférable » d'un joueur, c'est d'abord la durée de contrat qui lui reste.
- **Le contrat à durée déterminée spécifique du sportif** (en France, article L. 222-2-4 du Code du sport) : la durée est plafonnée à cinq ans. L'effet contrat est donc borné : un club ne peut pas « stocker » un joueur indéfiniment.
- **La rupture anticipée** : un joueur sous contrat ne peut partir avant le terme qu'avec l'accord du club (transfert) ou en rompant le contrat. Dans ce cas, une indemnité est due (article 17 du Règlement FIFA du statut et du transfert des joueurs, RSTJ). Cette indemnité potentielle, c'est précisément ce que le marché paie.
- **La comptabilité suit le droit** : dans les clubs qui appliquent les normes IFRS, l'indemnité de transfert payée est inscrite comme immobilisation incorporelle (IAS 38) et amortie sur la durée du contrat. Un contrat long étale le coût. C'est une raison de plus pour qu'un acheteur paie davantage.

**Ce que ça change pour la lecture des listes « fin de contrat ».** Un titulaire à 1 an de son terme est mécaniquement moins cher : son club doit vendre maintenant ou le perdre gratuitement. C'est un levier de négociation, pas une baisse de niveau.

### 1.2 Un marché des transferts en pleine réforme : l'arrêt Diarra

- **L'arrêt Diarra** (CJUE, 4 octobre 2024, C-650/22) : la Cour juge que certaines règles du RSTJ sur la rupture de contrat (calcul de l'indemnité, responsabilité solidaire du nouveau club, sanctions sportives, blocage du certificat international de transfert) sont de nature à entraver la libre circulation des travailleurs et à restreindre la concurrence.
- **La réponse de la FIFA** : un cadre provisoire en décembre 2024, puis un nouveau règlement négocié avec les représentants des joueurs, annoncé pour une entrée en vigueur en **janvier 2027**, sous la forme d'une convention collective internationale.
- **Conséquence pour le projet** : le modèle apprend sur 2014-2025, sous les anciennes règles. Si la réforme rend la rupture de contrat moins coûteuse pour le joueur, la « prime au contrat » mesurée ici pourrait diminuer. **C'est une limite juridique du modèle**, au même titre que les limites statistiques.

### 1.3 Les règles financières : pourquoi la Premier League paie 2,6 fois plus

- Le projet mesure qu'à profil égal, la Premier League multiplie la cote par 2,6. L'explication est d'abord économique (droits TV), mais le **cadre de contrôle financier** encadre la capacité de chaque club à suivre :
  - **UEFA** : la règle du coût de l'effectif (salaires, amortissement des transferts, commissions d'agents) limite ce coût à **70 % des revenus** des clubs engagés en coupe d'Europe. En 2026, neuf clubs ont été sanctionnés, dont Chelsea, Aston Villa, Nice et Strasbourg.
  - **Nationaux** : en France, la DNCG contrôle la gestion des clubs professionnels.
- **Lecture** : un club sanctionné ou sous surveillance doit vendre. Cela pèse sur les prix, indépendamment de la valeur sportive des joueurs.

### 1.4 Les agents : ce qui n'apparaît pas dans la cote

- La cote Transfermarkt ne dit rien des **commissions d'agents**, qui s'ajoutent au coût réel d'un transfert.
- Le **Règlement FIFA sur les agents de football** (2023) prévoit une licence, un plafonnement des commissions et l'interdiction de la représentation multiple. Il a été contesté devant plusieurs juridictions. Le 16 juillet 2026, la CJUE a jugé que ces règles pouvaient être justifiées (affaire C-209/23).
- **Limite pour le projet** : le « prix » étudié ici n'est pas le coût complet d'une opération.

### 1.5 L'image : ce que mesure le panel Instagram

- Le projet montre que les joueurs les plus suivis sont payés environ 1,7 fois au-dessus de leur valeur « statistique ».
- **Le droit à l'image** (article 9 du Code civil) appartient au joueur. Son exploitation commerciale fait l'objet de contrats distincts : en France, le **contrat d'exploitation de l'image individuelle du sportif** (article L. 222-2-10-1 du Code du sport, issu de la loi du 1er mars 2017). Une partie de la rémunération d'un joueur peut donc passer par ce canal, et non par son salaire.
- **Lecture** : le nombre d'abonnés est un indicateur de la valeur commerciale de l'image. Un club qui recrute un joueur très suivi achète aussi un potentiel de revenus (maillots, sponsors). Cela peut expliquer une partie de l'écart. Le projet ne permet pas de conclure à un lien de cause à effet (un seul relevé, panel choisi à la main).

### 1.6 Les mineurs : une valeur, mais des règles à part

- Plusieurs joueurs des listes « hausse prévue » ont **moins de 18 ans** (par exemple 16 ans).
- Le RSTJ encadre strictement les **transferts internationaux de mineurs** (article 19 : interdits sauf exceptions). En France, le premier contrat professionnel d'un mineur est lui aussi encadré.
- S'y ajoutent les **indemnités de formation** et le **mécanisme de solidarité** (5 % de l'indemnité de transfert reversés aux clubs formateurs), qui augmentent le coût réel d'un jeune joueur.
- **Lecture** : une forte hausse prévue pour un joueur de 16 ans ne veut pas dire qu'il est « achetable ». Le cadre juridique limite qui peut le recruter, et quand.

---

## Partie 2 : la forme. Dans quel cadre les données ont été utilisées

### 2.1 Des données personnelles : le RGPD s'applique

Les joueurs sont des personnes physiques identifiées. Leur nom, leur âge, leur salaire estimé et leur nombre d'abonnés sont des **données à caractère personnel**, même publiques.

| Question | Analyse pour ce projet |
|---|---|
| **Base légale** (art. 6) | Intérêt légitime (art. 6.1.f) : projet de formation et de portfolio, analyse statistique sans décision visant une personne. |
| **Mise en balance** | Personnalités publiques dont l'activité professionnelle est commentée publiquement ; données déjà publiées par des tiers ; pas d'usage commercial. Attention accrue pour les **mineurs** : l'article 6.1.f vise expressément le cas où la personne concernée est un enfant. |
| **Minimisation** (art. 5.1.c) | Seules les colonnes utiles ont été gardées. Le panel Instagram ne contient que le nombre d'abonnés, ni contenu ni photo. |
| **Information** (art. 14) | Les données ne sont pas collectées auprès des joueurs. L'exception de l'article 14.5.b (effort disproportionné, finalité statistique) peut être invoquée ; cette note et le README en tiennent lieu de transparence. |
| **Données sensibles** (art. 9) | Aucune : pas de santé, d'origine, d'opinion. La nationalité est conservée comme variable sportive (règles de quotas), pas comme origine. |
| **Durée** | Relevés datés (cotes au 30/06/2026, salaires au 07/10/2026, Instagram au 15/09/2026), pas de mise à jour automatique. |

### 2.2 Des bases de données protégées

- **Le droit sui generis du producteur de bases de données** (directive 96/9/CE ; en France, articles L. 341-1 et suivants du Code de la propriété intellectuelle) protège Transfermarkt, FBref ou SalarySport contre l'extraction ou la réutilisation d'une **partie substantielle** de leur contenu, indépendamment du droit d'auteur.
- **Transfermarkt** : utilisé via le jeu de données Kaggle *Football Data from Transfermarkt*, publié sous licence CC0. Une licence accordée par celui qui republie ne vaut pas forcément pour les droits du producteur d'origine. D'où le choix de **ne pas republier les fichiers bruts** et de renvoyer vers la source.
- **FBref / Sports Reference** : la politique de données de Sports Reference (consultée le 29/10/2026) déconseille de bâtir des outils sur des données scrapées et indique que, pour certains jeux de données, ses licences interdisent toute redistribution ; les faits eux-mêmes restent librement réutilisables. Les fichiers bruts FBref ne sont donc pas republiés.
- **SalarySport** : collecté par scraping de cinq pages publiques, avec des pauses entre les requêtes. Le `robots.txt` n'a pas pu être lu (erreur de certificat) : c'est documenté dans le journal. Le site ne publie pas de conditions d'utilisation (seulement une politique de confidentialité, vérifié le 29/10/2026) : faute d'autorisation, le relevé complet n'est pas republié. Les salaires sont des **estimations publiées par le site**, pas des données contractuelles.

### 2.3 Ce qui est publié sur GitHub, et ce qui ne l'est pas

| Publié | Non publié |
|---|---|
| Le code (notebooks, SQL) | Les fichiers bruts Transfermarkt (à télécharger sur Kaggle) |
| Les résultats agrégés et les graphiques | Les fichiers bruts FBref |
| Les résultats par joueur nécessaires à la démonstration | Le relevé SalarySport et le fichier des salaires par joueur |
| | Aucune photo de joueur (droit à l'image) |

**Licences** : le code est publié sous licence MIT (fichier `LICENSE`). Les données restent soumises aux conditions de leurs sources respectives.

### 2.4 Limites d'usage

- Les cotes, salaires et prédictions sont des **estimations**, pas des faits. Ils ne doivent pas servir à une décision individuelle (recrutement, négociation salariale) sans vérification humaine.
- Les listes « à visionner », « surcoût à justifier » ou « vendre maintenant » sont des **résultats statistiques**, pas des jugements sur les joueurs cités.
- Les joueurs mineurs apparaissent dans les résultats parce qu'ils figurent dans les données publiques. Ils ne font l'objet d'aucune recommandation d'achat.

---

*Sources principales : CJCE, 15 déc. 1995, Bosman, C-415/93 ; CJUE, 4 oct. 2024, Diarra, C-650/22 ; CJUE, 16 juil. 2026, C-209/23 (agents) ; Code du sport, art. L. 222-2-4 et L. 222-2-10-1 ; RGPD, art. 5, 6, 9, 14 ; directive 96/9/CE ; CPI, art. L. 341-1 ; RSTJ FIFA, art. 17 et 19 ; règlement UEFA sur l'octroi de licence aux clubs et la viabilité financière.*
