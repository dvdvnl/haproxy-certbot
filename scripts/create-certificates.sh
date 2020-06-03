#!/bin/bash

# Request certificates
certbot certonly --standalone --non-interactive --agree-tos --email info@example.com --http-01-port=380 \
  --cert-name example.com -d example.com -d www.example.com -d home.example.com -d business.example.com -d diskstation.example.com --dry-run

# Concatenate certificates
. /etc/scripts/concatenate-certificates.sh
