#!/bin/bash
# Script de instalación d paquete de iconos para PandoraFMS
# (C) Guillermo Sanchez gsanchez@sitssoluciones.com
# https://pandorafms.com.ar 
# PandoraFMS Enterprise Certified Partner

echo "Copiando Iconos..."
cp iconos.zip /var/www/html/pandora_console/images/console/icons
cd /var/www/html/pandora_console/images/console/icons
unzip iconos.zip
rm -r iconos.zip 
chown apache.apache *.*
echo "Reiniciando apache..."
systemctl restart httpd
echo "Instalacion Finalizada"

