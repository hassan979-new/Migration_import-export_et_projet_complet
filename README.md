# Migration, import/export et projet complet
## Le contenu exporté :
### premières lignes de SQL
- <img width="480" height="504" alt="image" src="https://github.com/user-attachments/assets/6c2dd19e-ff07-4bd8-96ab-d94f36fa4889" />
- <img width="480" height="504" alt="image" src="https://github.com/user-attachments/assets/77afebf6-40b7-4c5d-8353-35f99fe8a3fa" />
### premières lignes de CSV
- <img width="480" height="504" alt="image" src="https://github.com/user-attachments/assets/3d8f88bd-a4a7-4441-baff-0183791d61b1" />
- <img width="480" height="504" alt="image" src="https://github.com/user-attachments/assets/c3c9805c-f411-44b9-921e-0117bfda1fd8" />
## La base universite_prod après import :
- <img width="480" height="441" alt="image" src="https://github.com/user-attachments/assets/c0ae83e1-8581-45ee-b7b0-22c4ffaf8210" />
- <img width="480" height="270" alt="image" src="https://github.com/user-attachments/assets/7a1dd4a5-a102-4f70-9727-ffd23350fcf6" />
## Rapport :

#### 1- mysqldump

Avantages :

- Très simple à utiliser.

- Compatible avec toutes les versions de MySQL.

- Permet de sauvegarder toutes les bases ou seulement certaines tables.

Inconvénients :

- Lente pour les grosses bases de données.

- Exécute les sauvegardes en une seule tâche (pas de parallélisme).

#### 2- mysqlpump

Avantages :

- Plus rapide que mysqldump grâce aux threads parallèles.

- Permet d’exporter utilisateurs et privilèges facilement.

Inconvénients :

- Déprécié dans les versions futures.

- Disponible seulement depuis MySQL 5.7.

#### 3- MySQL Shell

Avantages :

- Permet des scripts automatisés pour copier des bases ou des tables.

- Intéressant pour programmer des tâches récurrentes.

Inconvénients :

- Certaines fonctions (comme dba.cloneDatabase) sont seulement dans la version Enterprise.

- Plus complexe pour les débutants.

#### 4- MySQL Workbench

Avantages :

- Interface graphique intuitive.

- Permet de faire des sauvegardes et restaurations facilement.

- Visualise les performances et les utilisateurs.

Inconvénients :

- Moins rapide pour de très grandes bases.

- Automatisation difficile sans scripts.

#### 5- Conclusion :

- Pour des sauvegardes rapides et petites : mysqldump ou Workbench suffisent.

- Pour des bases grandes ou avec plusieurs tables : mysqlpump est plus efficace.

- Pour automatiser ou programmer les tâches : MySQL Shell est utile, surtout avec Python ou JS.
## 🧑‍💻 Author

- 👤 Agouram Hassan
- 🏫  Bases de données
- 🎓 Instructor	Mr.LACHGAR
- 📅 28 décembre 2025
