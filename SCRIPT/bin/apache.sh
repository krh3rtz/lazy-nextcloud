#/bin/bash
# By Krh3rtz 2018

# This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
 
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
 
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Preparación del servidor Apache

configfolder='config/'
configfile='privcloud.conf'

chown -R www-data:www-data /var/www/html/nextcloud/;
cp $configfolder$configfile /etc/apache2/sites-available/$configfile;
ln -s /etc/apache2/sites-available/$configfile /etc/apache2/sites-enabled/$configfile;
/etc/init.d/apache2 stop && /etc/init.d/apache2 start;

# Habilitar módulo SSL en Apache

a2enmod rewrite;
a2enmod ssl;
echo "[*] Recuerde generar y agregar las rutas de los certificados al archivo $configfile para el tráfico ssl.";
echo "    Luego de ello ejecutar: a2ensite $(echo $configfile | cut -d'.' -f1) && /etc/init.d/apache2 stop && /etc/init.d/apache2/start";
sleep 3
