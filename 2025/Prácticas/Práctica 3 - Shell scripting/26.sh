inicializar() {
	ARRAY_VACIO=()
}

agregar_elem() {
	if [ $# -ne 1 ]; then
		echo "Error: 'agregar_elem' requiere un parámetro! (Elemento a agregar)"
		return 1
	else
		ARRAY_VACIO+=("$1")
		echo "Agregado: '$1'"
	fi
}

eliminar_elem() {
	if [[ $# -ne 1 ]]; then
		echo "Error: 'eliminar_elem' requiere un parámetro! (La posición a eliminar)."
		return 1
	fi

	local POSICION=$1
	local INDICE=$((POSICION - 1))

	if [[ $INDICE -lt 0 || $INDICE -ge ${#ARRAY_VACIO[@]} ]]; then
		echo "ERROR: Posición '$POSICION' inválida. Rango válido: 1 a ${#ARRAY_VACIO[@]}."
		return 1
	fi

	local elemento_eliminado="${ARRAY_VACIO[INDICE]}"
	unset ARRAY_VACIO[INDICE]
	ARRAY_VACIO=("${ARRAY_VACIO[@]}")

	echo "Eliminado: '$elemento_eliminado' de la posición $POSICION."
}

longitud() {
	echo "Longitud del array: ${#ARRAY_VACIO[@]}"
}

imprimir() {
	echo "Impresión del array: (${ARRAY_VACIO[@]})"
}

inicializar_Con_Valores() {
	if [[ $# -ne 2 ]]; then
		echo "Error: 'inicializar_Con_Valores' requiere dos parámetros! (La longitud y el valor a rellenar)."
		return 1
	fi
	
	ARRAY_NUEVO=()
	for (( i=0; i<$1; i++ )); do
		ARRAY_NUEVO+=("$2")
	done
	
	echo "ARRAY_NUEVO inicializado con los siguientes valores: (${ARRAY_NUEVO[@]})"
}

inicializar
agregar_elem "A"
agregar_elem "B"
agregar_elem "C"
eliminar_elem 2
longitud
imprimir
inicializar_Con_Valores 5 "Z"
