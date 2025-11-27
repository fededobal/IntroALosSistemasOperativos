if [ $# -eq 0 ] || [ ! -d "$1" ]; then
	echo "Error: se requiere un parámetro que corresponda a un directorio."
	exit 4
fi

CANT=0
for archivo in "$1"/*; do
	if [ -f "$archivo" ]; then
		if [ -r "$archivo" ] && [ -w "$archivo" ]; then
			let CANT++
		fi
	fi
done

echo "Cantidad de archivos para los cuales el usuario que ejecuta el script tiene permiso de lectura y escritura: $CANT"
