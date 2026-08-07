if [[ $# != 1 ]]; then
    echo "Debe ingresar el nombre del usuario a monitorear."
    exit 1
fi

USUARIO_A_BUSCAR="$1"
echo "Buscando al usuario '$USUARIO_A_BUSCAR'. Ctrl+C para detener."
while true; do
    who | grep -w "$USUARIO_A_BUSCAR" > /dev/null
    if [[ $? != 0 ]]; then
        echo "¡Usuario $USUARIO_A_BUSCAR logueado en el sistema!"
        break
    fi
    echo "$(date +%H:%M:%S) - Usuario $USUARIO_A_BUSCAR no encontrado. Esperando 10 segundos..."
    sleep 10
done

echo "Monitoreo finalizado."
