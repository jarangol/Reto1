#!/bin/sh
# Con el commando 'free -k' mostramos datos de uso de RAM, y allí con 'awk'
# podremos administrar o manejar el string que nos entregó el primer comando.
RAM_USE=`free -k | awk 'NR==2{print $3}'`
# Hacermos un post utilizando el comando 'curl', indicando el formato con el cual 
# se hará el post y enviando los datos requeridos.
curl -H "Content-Type: application/json" -X POST --data "{\"ram_use\":{\"value\": $RAM_USE}}" https://ramuse.herokuapp.com/ram_uses.json