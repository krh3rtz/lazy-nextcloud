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

# Instalador de NextCloud

echo '[+] Instalando software.'
./bin/depen.sh;

echo '[+] Descargando y preparando Nextcloud.';
./bin/nextcloud.sh
echo '[*] Recuerde configurar la ruta de de la información en la configuración de Nextcloud.';

echo '[+] Preparando MySQL y la BD.';
./bin/mysql.sh;

echo '[+] Preparando servidor Apache.';
./bin/apache.sh;

echo '[+] Listo. Puede acceder a su nueva nube privada y configurarla. Happy Hacking';
echo 'By Krh3rtz: __Exploiting vulnerabilities, creating new ways through__'
