# This repo contains plugins for pt-online-schema-change tool from the Percona toolkit
## table-swap-confirmation-plugin
This plugin asks you to confirm table swap and pause Percona tool actions. This is a good time to decrease the load on the database to prevent locks during table swapping.
Example of the usage:
```
pt-online-schema-change -u$MYSQL_USER -p"${MYSQL_PASS}" -h${MYSQL_HOST} --alter "ADD COLUMN XXXXXXXXX INT DEFAULT 0 NOT NULL" --execute --plugin=table-swap-confirmation-plugin.pl
```
