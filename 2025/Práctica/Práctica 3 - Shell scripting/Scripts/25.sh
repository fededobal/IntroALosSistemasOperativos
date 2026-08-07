CANT_PARAMETROS=$#
if [ $CANT_PARAMETROS -eq 0 ]; then
	echo "Se requiere al menos un parámetro"
	exit 1
fi
CANT_INEXISTENTES=0
CONTADOR=0
for RUTA in "$@"; do
	POS=$((CONTADOR + 1))
	if [ -e "$RUTA" ]; then
		if [ -d "$RUTA" ]; then
			echo "$RUTA corresponde a un DIRECTORIO"
		elif [ -f "$RUTA" ]; then
			echo "$RUTA corresponde a un ARCHIVO"
		fi
	else
		let CANT_INEXISTENTES++
	fi
	
	let CONTADOR++
done

echo "Cantidad de archivos/directorios inexistentes en el sistema: $CANT_INEXISTENTES"
