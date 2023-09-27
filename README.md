![](./assets/logo.png)

# KomBot
A TypeScript MK9 Frame Data discord.js Bot.

## Configuration
Create a `.env` file in the root directory with the following:

```ts
# .env
TOKEN = ""
PREFIX = ""
```

## Installation Requirements
- [Bun](https://bun.sh/)
- [SQLite](https://www.sqlite.org/)

## Build
```shell
bun install
bun .
```

## Deploy systemd Service

```
[Unit]
Description="kombot"

[Service]
ExecStartPre=/bin/bash -c '! /usr/bin/systemctl is-active --quiet kombot.service'
ExecStart=<PATH_TO_BUN> <PATH_TO_INDEX.TS>
Restart=always
RestartSec=10
StandardError=syslog
SyslogIdentifier=kombot-bun
Enviroment="PATH=<PATH_TO_BUN>"
Enviroment="NODE_ENV=production"
WorkingDirectory=<PROJECT_DIRECTORY>

[Install]
WantedBy=multi-user.target
```

Replace contents of `kombot.service` with your host's path information.

Create a symbolic link to `systemd`:

`$sudo ln -s <PATH_TO_kombot.service> /etc/systemd/system/kombot.service`
