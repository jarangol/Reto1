# Reto1

* El archivo "getRamUse.sh" es el script en bash (con su documentación) para tomar un dato de la memoria y hacer un post de dicho dato.
* Para el daemon modificamos el archivo crontab con el commando "crontab -e" (-e para editar). Allí pondremos el siguiente commando: "* * * * * sh getRamUse.sh" el cual significa: ejecutar el comando 'sh getRamUse.sh' cada minuto.
