FROM certbot/certbot
COPY ./scripts/ /etc/scripts/
EXPOSE 380
CMD [ "/etc/scripts/renew-certificates.sh" ]