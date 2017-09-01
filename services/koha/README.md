# Koha Library Software

We are using **Koha** as OPAC system for our physical archive.

- https://koha-community.org/
- https://github.com/digibib/koha-docker

## How to

This snippet shows how to run this locally on a machine with docker:

```bash
git clone git@github.com:fiedl/wingolfsplattform-docker.git
cd wingolfsplattform-docker

docker-compose up koha
```

Then, open a browser to http://localhost:8001. The default credentials are `admin` and `secret`.