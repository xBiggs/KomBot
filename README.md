![](./assets/logo.png)

# KomBot
An MK9 Frame Data Discord Bot.

## Configuration
Create a .env file in the root directory with the following:

```bash
# .env
DATABASE_URL=""
TOKEN=""
PREFIX=""
```

## Installation Requirements
- [PostgreSQL](https://www.postgresql.org/download/)
- [NodeJS](https://nodejs.org/)

## Database
```shell
psql -U <USERNAME> -d <DBNAME> < ./prisma/database.sql
```

## Build
```shell
npm install &&\
npm run build &&\
npm run start
```

## Deploy systemd Service

```
[Unit]
Description="KomBot"

[Service]
ExecStart=<PATH_TO_NODE> <PATH_TO_INDEX_JS>
Restart=always
RestartSec=10
StandardError=syslog
SyslogIdentifier=KomBot-nodejs
Enviroment="PATH=<PATH_TO_NODE>"
Enviroment="NODE_ENV=production"
WorkingDirectory=<PATH_TO_GITHUB_REPO>

[Install]
WantedBy=multi-user.target
```

Replace contents of `KomBot.service` with your host's path information.

Create a symbolic link to `systemd`:

`$ ln -s <PATH_TO_KomBot.service> /etc/systemd/system/KomBot.service`
