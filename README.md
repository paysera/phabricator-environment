# phabricator-environment
### Initial setup
##### Create .env file
```bash
echo -e "#phabricator config\nPHABRICATOR_HOST=phabricator.local" > .env
```
##### Create mysql container
```bash
docker-compose up mysql
```
### Control
##### Start/restart environment
```bash
./scripts/launch.sh
```
##### Update environment
```bash
./scripts/launch.sh update
```
