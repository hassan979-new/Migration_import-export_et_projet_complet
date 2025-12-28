#!/bin/bash

# --- Variables ---
MYSQL_USER="root"
MYSQL_PORT="3307"            # Removed spaces around '='
MYSQL_PWD="1234"
DUMP_FILE="C:/Users/HP/Desktop/exercice2/sql/TP10/dump.sql"
CSV_FILE="C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ins.csv"

# --- Dump complet de la base dev ---
mysqldump -u $MYSQL_USER -p"$MYSQL_PWD" -P $MYSQL_PORT --single-transaction universite_dev > "$DUMP_FILE"
if [ $? -ne 0 ]; then
    echo "Erreur lors du dump de universite_dev"
    exit 1
fi
echo "Dump créé : $DUMP_FILE"

# --- Import dans la base prod ---
mysql -u $MYSQL_USER -p"$MYSQL_PWD" -P $MYSQL_PORT universite_prod < "$DUMP_FILE"
if [ $? -ne 0 ]; then
    echo "Erreur lors de l'import dans universite_prod"
    exit 1
fi
echo "Import terminé dans universite_prod"

# --- Export CSV des inscriptions ---
mysql -u $MYSQL_USER -p"$MYSQL_PWD" -P $MYSQL_PORT -e "
  SELECT * FROM universite_dev.INSCRIPTION
  INTO OUTFILE '$CSV_FILE'
  FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"'
  LINES TERMINATED BY '\n';
"
if [ $? -ne 0 ]; then
    echo "Erreur lors de l'export CSV"
    exit 1
fi
echo "Export CSV terminé : $CSV_FILE"

echo "Migration et export CSV terminés avec succès."
