# brady-compose

Simple Docker compose file to use the bradyverse server along with a postgres instance for the stat tracking

Not for production use

```
docker compose up -d
# optionally...
docker attach mcsrv
# to tear down
./scripts/down.sh
```
