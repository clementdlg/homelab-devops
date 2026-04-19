# Homelab - DevOps Automation
This repository is a monorepo for services deployed in my homelab via docker compose

# services
### Gitlab
used to host the repos and the pipelines

### bind9 dns 
- used as an authoritative DNS for the krem.lan. zone

### NGINX reverse proxy
proxies: 
- gitlab.krem.lan -> gitlab
- oci.krem.lan -> gitlab
- dns.krem.lan -> bind

# services to deploy
### Gitlab Runner
mainly used to build and push and OCI images

### MariaDB
used by openstack services
