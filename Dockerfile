FROM debian:bookworm

RUN  wget -q -O - https://nightly.odoo.com/odoo.key | gpg --dearmor -o /usr/share/keyrings/odoo-archive-keyring.gpg \
  echo 'deb [signed-by=/usr/share/keyrings/odoo-archive-keyring.gpg] https://nightly.odoo.com/18.0/nightly/deb/ ./' | tee /etc/apt/sources.list.d/odoo.list \
  apt-get update && apt-get install odoo

