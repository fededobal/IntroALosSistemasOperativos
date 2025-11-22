#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no lo hago hoy,
# mañana ya no me acuerdo de lo que quise hacer
echo "Introduzca su nombre y apellido:"
read nombre apellido
echo "Fecha y hora actual:"
date
echo "Su apellido y nombre es:"
echo "$apellido $nombre"
echo "Su usuario es: `whoami`"
echo "Su directorio actual es: `pwd`"
echo -e "y su contenido es: \n`ls`"
echo "Espacio libre en disco: `df -h`"
echo "Ahora introduzca su edad:"
read edad
echo "$nombre $apellido de edad $edad:"
echo "Borrando directorio /home..."
