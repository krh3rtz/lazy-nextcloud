#!/bin/bash
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

# Descarga y preparación de Nextcloud
version='nextcloud-12.0.3.zip'
rm -rf /var/www/html/* && curl -L -O https://download.nextcloud.com/server/releases/$version && mv $version /var/www/html/ &&
unzip /var/www/html/$version -d /var/www/html/ && rm /var/www/html/$version;

# Creación de directorio DATA o designación de permisos
data='/home/DATA'
mkdir -p $data;
chown www-data:www-data -R $data;
