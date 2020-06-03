#!/bin/bash

# Certificates exist
if [ -d /etc/letsencrypt/live/example.com ]; then
  # Check certificates and renew them
  certbot renew --http-01-port=380 --dry-run

  # Concatenate certificates
  . /etc/scripts/concatenate-certificates.sh

# Certificates don't exist
else
  #  Execute certificate creation script
  . /etc/scripts/create-certificates.sh
fi
