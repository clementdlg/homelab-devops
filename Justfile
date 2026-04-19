set shell := ["bash", "-c"]

cert_cn := "*.krem.lan"
cert_days     := "365"
cert_key_type := "rsa:4096"
cert_key_out  := "/etc/ssl/private/krem.lan.key"
cert_out      := "/etc/ssl/certs/krem.lan.crt"

# list available tasks (hi)
@default:
    just --list

# generates a self-signed certificate (for local development)
renew-cert:
    @echo "Generating new x509 certificate for {{cert_cn}} ..."
    
    openssl req -x509 -nodes \
        -days {{cert_days}} \
        -newkey {{cert_key_type}} \
        -keyout {{cert_key_out}} \
        -out {{cert_out}} \
        -subj "/C=FR/ST=Ile-de-France/L=Paris/O=Krem DevOps/OU=IT/CN=*.krem.lan"
