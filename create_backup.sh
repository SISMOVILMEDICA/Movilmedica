#!/bin/bash
NOW=`date +"%Y_%m_%d-%H_%M"`
DB=odoo
BACKUP_DIR=backups
CONTAINER_NAME=db

docker compose exec -i -u postgres $CONTAINER_NAME pg_dump -U odoo -d $DB | gzip -9 > $BACKUP_DIR/$DB_${NOW}.sql.gz
