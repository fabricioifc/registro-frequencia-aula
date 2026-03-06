#!/bin/bash

set -e

CERTS_DIR="./nginx/certs"
DOMAINS=("localhost" "127.0.0.1" "chamada.local")

mkdir -p "$CERTS_DIR"

if command -v mkcert &> /dev/null; then
    echo "Usando mkcert..."
    mkcert -install
    mkcert -cert-file "$CERTS_DIR/cert.pem" -key-file "$CERTS_DIR/key.pem" "${DOMAINS[@]}"
    echo "Certificado gerado com mkcert em $CERTS_DIR/"
else
    echo "mkcert não encontrado. Usando openssl..."
    openssl req -x509 -newkey rsa:4096 -sha256 -days 365 -nodes \
        -keyout "$CERTS_DIR/key.pem" \
        -out "$CERTS_DIR/cert.pem" \
        -subj "/CN=localhost" \
        -addext "subjectAltName=DNS:localhost,IP:127.0.0.1"
    echo "Certificado auto-assinado gerado com openssl em $CERTS_DIR/"
    echo "Aviso: Certificados auto-assinados causarão aviso no navegador."
    echo "Instale o mkcert para certificados confiáveis: https://github.com/FiloSottile/mkcert"
fi
