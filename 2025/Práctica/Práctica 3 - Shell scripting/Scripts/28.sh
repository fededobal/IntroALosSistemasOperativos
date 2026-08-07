agregarArchivos() {
	ARCHIVOS_ARRAY=()
	ARCHIVOS_ARRAY+=( $DIR$EXTENSION )
	if [[ ${ARCHIVOS_ARRAY[0]} == "$DIR$EXTENSION" ]]; then
		if [[ ! -e "$DIR$EXTENSION" ]]; then
		    ARCHIVOS_ARRAY=()
		    echo "Error: No se encontraron archivos $EXTENSION en $DIR."
		fi
    	fi
}

verArchivo() {
	if [ $# -eq 0 ]; then
		echo "Debe ingresar un parámetro"
		return 1
	elif [ -e "$1" ]; then
		cat "$1"
	else
		echo "Error: archivo no encontrado"
		return 5
	fi
}

cantidadArchivos() {
	echo "Cantidad de archivos $EXTENSION en $DIR: ${#ARCHIVOS_ARRAY[@]}"
}

borrarArchivo() {
	if [ $# -eq 0 ]; then
		echo "Debe ingresar un parámetro"
		return 1
	else
		local POS=-1
		local ENCONTRADO=false
		for i in "${!ARCHIVOS_ARRAY[@]}"; do
			if [ $ARCHIVOS_ARRAY[$i] == "$1" ]; then
				let ENCONTRADO=true
				let POS=$i
			fi
		done
		if [ "$ENCONTRADO" == "false" ]; then
			echo "Error: archivo no encontrado"
			return 10
		fi
		
		read -p "¿Desea eliminar lógicamente el archivo $1? (S/N)" OP
		unset ARCHIVOS_ARRAY[$POS]
		if [ $OP == "N" ]; then
			echo "Necesitamos su contraseña sudo para poder borrar en $DIR"
			sudo rm "$1"
			echo "Archivo borrado del disco"
		fi
		echo "Archivo borrado del arreglo"
	fi
}

DIR="/home/*"
EXTENSION=".doc"

agregarArchivos
echo "${ARCHIVOS_ARRAY[@]}"
verArchivo "/home/aa.doc"
cantidadArchivos
borrarArchivo "/home/aa.doc"
