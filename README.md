# wingolfsplattform-docker

[![Build Status](https://travis-ci.org/fiedl/wingolfsplattform-docker.svg?branch=master)](https://travis-ci.org/fiedl/wingolfsplattform-docker)

Docker-Compose-Konfiguration für den container-basierten Teil der Wingolfsplattform.

## Usage

Fire up `docker-compose` and visit http://localhost:5001 to see our hello-world service.

```bash
# Start services
cd wingolfsplattform-docker
docker-compose up -d
open http://localhost:5001
```

To stop the services, run `docker-compose stop`.

**Attention:** `docker-compose down` would **delete all the data volumes**!

## Run tests

Each service has its own tests in its repository. But there are also some high level integration tests in this repository that make sure that the services are correctly installed and can be accessed through the desired ports or addresses.

To run the tests, just type:

```
make test
```

The tests are defined in the [`spec` directory](spec/). For more info, have a look at the README there.

## Installation

If you have docker and docker-compose already installed, all you need to do is to clone this repository.

```
git clone git@github.com:fiedl/wingolfsplattform-docker.git
```

### Installing docker on macOS

The easiest way to install docker on macOS is using [homebrew](https://brew.sh) with [cask](https://caskroom.github.io).

```bash
brew cask install docker
```

In order to be able to start docker containers, you need to start the docker machine first. You can either use the application, which has a little icon in the top bar, or do it manually.

```bash
# Either, using the app:
open /Applications/Docker.app

# Or, manually:
docker-machine start default && eval $(docker-machine env default)
```

If there are version conflicts between client and docker api, also called docker engine, just run `docker-machine upgrade default`.

Now, you are ready to run `docker-compose up`.

## Secrets for production servers

Secrets for the production servers are not to be included in this repository. Instead, secrets are collected in a separate file `docker-compose-secrets.yml` on the production servers.

```yaml
# Example: /root/docker-compose-secrets.yml

version: '3'
services:
  mysql:
    environment:
      MYSQL_ROOT_PASSWORD: ".............................................."
```

In order to launch the docker-compose services with these separate secrets, one needs to specify both docker-compose files
when calling `docker-compose up`:

```bash
docker-compose \
  --file /var/wingolfsplattform-docker/docker-compose.yml \
  --file /root/docker-compose-secrets.yml \
  up
```
