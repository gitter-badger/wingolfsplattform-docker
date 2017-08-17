# wingolfsplattform-docker

Docker-Compose-Konfiguration für den container-basierten Teil der Wingolfsplattform.

## Usage

Fire up `docker-compose` and visit http://localhost:5001 to see our hello-world service.

```bash
# Start services
cd wingolfsplattform-docker
docker-compose up -d
open http://localhost:5001
```

To stop the services, run `docker-compose down`.

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