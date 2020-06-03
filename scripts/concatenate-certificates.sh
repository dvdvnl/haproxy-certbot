#!/bin/bash

if [ -f /etc/letsencrypt/live/example.com/fullchain.pem -a -f /etc/letsencrypt/live/example.com/privkey.pem ]; then
  cat /etc/letsencrypt/live/example.com/fullchain.pem /etc/letsencrypt/live/example.com/privkey.pem > /etc/certificates/example.com.pem
fi
