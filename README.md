# nestjs

## Installation

```bash
$ npm install
```

## Running the app

```bash
$ npm run build
# development
$ npm run start
```
# watch mode
```bash
$ npm run start:dev
```

```bash
# unit tests
$ npm run test
```

## Linting

```bash
$ npm run lint
```

## Formatting

```bash
$ npm run format
```

```bash
npm run build
npm run typeorm migration:run
```

### Connection:

- Host name/address: postgres | <container-db-name>
- port: 5432
- maintenance database: nestjsDB
- username: postgres
- password: postgres

### Migration
```bash
npm run typeorm migration:generate -- -n <name>
npm run typeorm migration:create -- -n <name>
npm run typeorm migration:run
npm run typeorm migration:revert
```

### curl Register
```bash
curl --location 'http://localhost:3000/auth/signup' \
--header 'Host: localhost' \
--header 'Content-Type: application/json' \
--data-raw '{
    "userName": "user1",
    "password": "1",
    "email": "user1@demo.com",
    "role": "ADMIN"
}'
```

### Docker
network:
```bash
$ docker network create <network-name>
```
Volume:
```bash
$ docker volume create <volume-name>
```
dev:
DB:
```bash
$ docker run -d --name <container-db-name> --network <network-name> --network-alias pgsql-dev -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=nestjsDB -v <volume-name>:/var/lib/postgresql/data postgres
```
Service:
```bash
$ docker build -t <image-name> .
$ docker run -dp 3000:3000 --network <network-name> <container-service-name>
```