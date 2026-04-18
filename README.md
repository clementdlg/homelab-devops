# Homelab - DevOps Automation
This repository is a monorepo for services deployed in my homelab via docker compose

# services
### Gitlab
used to host the repos and the pipelines

# next services to add :
### bind9 dns 
- used as an authoritative DNS for the krem.lan. zone

### NGINX reverse proxy
strategy for exposing services from this docker compose stack :
the host's fqdn is : svc.krem.lan
each service is exposed via a subdomain, then in Bind DNS, we create CNAME to shorten the name of the services
- A: dns.svc.krem.lan -> CNAME: dns.krem.lan
- A: gitlab.svc.krem.lan -> CNAME gitlab.krem.lan
- A: oci.svc.krem.lan -> CNAME: oci.krem.lan
- A: db.svc.krem.lan -> CNAME: db.krem.lan

### Gitlab Runner
mainly used to build and push and OCI images
dns : A: runner-01.svc.krem.lan

### MariaDB
used by openstack services
