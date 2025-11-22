if [[ $# != 1 ]]; then
    echo "Error: Debe ingresar exactamente un parámetro (nombre de archivo/directorio)."
    echo "Uso: $0 <nombre>"
    exit 1
fi
NOMBRE="$1"
if [ -e "$NOMBRE" ]; then
    if [ -d "$NOMBRE" ]; then
        echo "El elemento '$NOMBRE' existe y es un directorio."
    elif [ -f "$NOMBRE" ]; then
        echo "El elemento '$NOMBRE' existe y es un archivo regular."
    else
        echo "El elemento '$NOMBRE' existe, pero no es un archivo regular ni un directorio (ej. enlace simbólico)."
    fi
else
    echo "El elemento '$NOMBRE' no existe. Procediendo a crear un directorio."
    mkdir "$NOMBRE"
    if [[ $? != 0 ]]; then
        echo "Directorio '$NOMBRE' creado exitosamente."
    else
        echo "Error: No se pudo crear el directorio '$NOMBRE'."
    fi
fi
