if [ ! -e "/home/bin" ]; then
	sudo mkdir "/home/bin"
fi

CANT_MOVIDOS=0
for archivo in *; do
	if [ -x "$archivo" ]; then
		echo "Moviendo el archivo '$archivo' a /home/bin..."
		sudo mv "$(readlink -f "$archivo")" "/home/bin"
		let CANT_MOVIDOS++
	fi
done

if [ $CANT_MOVIDOS -eq 0 ]; then
	echo "No se movió ningún archivo"
else
	echo "Cantidad de archivos movidos: $CANT_MOVIDOS"
fi
