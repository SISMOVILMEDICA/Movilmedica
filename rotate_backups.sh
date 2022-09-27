#!/bin/bash

DB=odoo
BACKUP_DIR=backups
DAYS_TO_KEEP=5

find $BACKUP_DIR/$DB_* -mtime +$DAYS_TO_KEEP -exec rm {} \;
