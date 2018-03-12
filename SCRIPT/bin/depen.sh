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

# Instalación de dependencias y software necesario

# Reconfiguración de paquetes (error /var/lock en Ubuntu)
dpkg --configure -a;

# Actualización e instalación de software restante
apt-get update && aptitude upgrade;
apt-get install aptitude curl zip unzip;

# Instalando Apache 2, PHP 7.0 y MySQL.
aptitude install apache2 mysql-server mysql-client php-7.0;

# Instalación de dependencias
aptitude install libapache2-mod-php7.0 php7.0-mbstring php7.0-curl php7.0-zip php7.0-gd php7.0-mysql php7.0-mcrypt php-xml;
