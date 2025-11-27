imprimirLongitudArreglo() {
	echo "Longitud del arreglo: ${#ARREGLO[@]}"
}
imprimirArreglo() {
	echo "Impresión del arreglo: (${ARREGLO[@]})"
}
retornarElementoEnN() {
	if [[ ${#ARREGLO[@]} < $2 ]]; then
		echo "Error: la longitud del arreglo es menor a N"
		return 1
	fi
	echo "Elemento en la posición $2: ${ARREGLO[$2]}"
}

GRUPO="users"
LISTA_USUARIOS_TEXTO=$(grep "^$GRUPO:" /etc/group | cut -d: -f4 | tr ',' ' ')
ARREGLO=( $LISTA_USUARIOS_TEXTO )

case $# in
	0) echo "Error: debe ingresar al menos un parámetro..."
		echo "- “-b n”: Retorna el elemento de la posición n del arreglo si el mismo existe"
		echo "- “-l”: Devuelve la longitud del arreglo"
		echo "- “-i”: Imprime todos los elementos del arreglo en pantalla"
		;;
	1) if [[ $1 == "-l" ]]; then
		imprimirLongitudArreglo
		elif [[ $1 == "-i" ]]; then
			imprimirArreglo
		else
			echo "Error: argumento desconocido"
		fi
		;;
	2) if [[ $1 == "-b" ]]; then
		retornarElementoEnN
		fi
		;;
	*) echo "Error: cantidad de argumentos incorrecta" ;;
esac
