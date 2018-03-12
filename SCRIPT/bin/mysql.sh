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

# Preparación de MySQL y base de datos

mysql_secure_installation;
mysql -u root -p < config/next.sql;
/etc/init.d/mysql stop; /etc/init.d/mysql start;

# Recuerde modificar el puerto por defecto para la conexión a la base de datos
# Desde el archivo /etc/mysql/my.cnf con los parámetros [Client] y [mysqld]
