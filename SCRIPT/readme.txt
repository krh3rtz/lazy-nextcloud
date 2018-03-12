# LAZY NEXTCLOUD

NextCloud es un proyecto opensource que permite alojar una nube privada dentro de un servidor propio. Cuenta con muchas características.

https://nextcloud.com/     -> Sitio del proyecto

¿Qué es lazy-nextcloud?

Es una serie de scripts que permiten la instalación de NextCloud de manera
rápida y segura. 

Para utilizarlo es necesario contar con certificados. Estos pueden ser creados con el maravilloso proyecto Cert-Bot o este pequeño script https://github.com/krhertz/create-certificates

Lazy-nextcloud realiza la instalación de NextCloud (probado en Ubuntu Server 16.04). 

El Script principal se llama nextcloud_inst.sh y es el encargado de orquestar a los otros pequeños ayudantes.

Primero se instalan las dependencias necesarias para que nextcloud funcione. Esto implica reconfigurar los paquetes para que no haya errores, instalar aptitude, Apache, mysql y php. Esto está contenido dentro de bin/depen.sh

Luego de ello, se procede con la ejecución de bin/nextcloud.sh . Este último se encarga de la descarga y desempaquetado de NextCloud desde sus servidores. Solo como advertencia, verifique primero que la versión a descargar sea la deseada, pues es posible que el software se haya actualizado. Una de las cosas que crea es un lugar para almacenar la información de los usuarios. Esta ruta hay que agregarla a la configuración de nextcloud ya que es malo mantener los archivos públicos (como por defecto).

Continuando, el script bin/mysql.sh es ejecutado. Dicho script se dedica a la preparación de la base de datos y para ello importa el archivo config/next.sql , el cual contiene un script SQL muy sencillo. Con ello se crea una nueva base de datos.

Como último paso se manda llamar al script bin/apache.sh . Con el se configura el servidor web que alojará el login y la plataforma web de NextCloud. Para ello se otorga la permisología necesaria a la carpeta que alojará a NextCloud. Se copia el archivo de configuración config/privcloud.conf a la suta de sites-available de apache y se crea un symlink a la carpeta sites-enabled.Como plus se habilitan los dos módulos el rewrite y el ssl, este último para aprovechar los certificados creados previamente.

Aunque lazy-nextcloud automatiza la gran mayoría de las tareas, aún es necesario configurar algunas cosas dentro de los archivos de configuración. Por ejemplo, dentro del archivo config/privcloud.conf hay que cambiar la ip escrita por defecto por aquella de su servidor. De igualmanera hay que agregar las rutas de los certificados.

Otro archivo a modificar es el de la base de datos, ya que cuenta con una contraseña por defecto.

Notará que cuando abrá NextCloud en su servidor web, cree la conexión con la base de datos y se loguee habrá algunas advertencias en pantalla. Solamente hay que seguir las instrucciones proveídas por la documentación de NextCloud y listo.

Es recomendable estudiar bien el script y ver qué cambios se pueden hacer (eg. cambiar BD por MariaDB o Postgresql).

Muchas gracias a los creadores de NextCloud por este maravilloso software.


	 ██ ▄█▀ ██▀███   ██░ ██ ▓█████  ██▀███  ▄▄▄█████▓▒███████▒	
 	 ██▄█▒ ▓██ ▒ ██▒▓██░ ██▒▓█   ▀ ▓██ ▒ ██▒▓  ██▒ ▓▒▒ ▒ ▒ ▄▀░	
	▓███▄░ ▓██ ░▄█ ▒▒██▀▀██░▒███   ▓██ ░▄█ ▒▒ ▓██░ ▒░░ ▒ ▄▀▒░ 	
	▓██ █▄ ▒██▀▀█▄  ░▓█ ░██ ▒▓█  ▄ ▒██▀▀█▄  ░ ▓██▓ ░   ▄▀▒   ░	
	▒██▒ █▄░██▓ ▒██▒░▓█▒░██▓░▒████▒░██▓ ▒██▒  ▒██▒ ░ ▒███████▒	
	▒ ▒▒ ▓▒░ ▒▓ ░▒▓░ ▒ ░░▒░▒░░ ▒░ ░░ ▒▓ ░▒▓░  ▒ ░░   ░▒▒ ▓░▒░▒	
	░ ░▒ ▒░  ░▒ ░ ▒░ ▒ ░▒░ ░ ░ ░  ░  ░▒ ░ ▒░    ░    ░░▒ ▒ ░ ▒	
	░ ░░ ░   ░░   ░  ░  ░░ ░   ░     ░░   ░   ░      ░ ░ ░ ░ ░	
	░  ░      ░      ░  ░  ░   ░  ░   ░                ░ ░    	
	                                                 ░        	
									
	__"Exploiting vulnerabilities, creating new ways through"__	

	
	Happy hacking.
