# Koha Library Software

We are using **Koha** as OPAC system for our physical archive.

- https://koha-community.org/
- https://github.com/digibib/koha-docker

## How to

This snippet shows how to run this locally on a machine with docker:

```bash
# Clone this repo
git clone git@github.com:fiedl/wingolfsplattform-docker.git
cd wingolfsplattform-docker

# Define hostname aliases (needed for nginx routing)
sudo echo "127.0.0.1 opac.wingolfsplattform.dev staff.opac.wingolfsplattform.dev" >> /etc/hosts

# Start services
docker-compose up koha nginx
```

Open staff interface: http://staff.opac.wingolfsplattform.dev:8080 (credentials: `admin`, `secret`)

Open public opac: http://opac.wingolfsplattform.dev:8080
