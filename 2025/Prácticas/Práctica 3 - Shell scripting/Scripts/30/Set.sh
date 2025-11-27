initialize() {
	SET=()
}

buscar_elemento() {
	if [ $# -ne 1 ]; then
		echo "Error: debe pasar exactamente 1 parámetro para buscar en el Set"
		return 1
	fi
	for elem in "${SET[@]}"; do
		if [ "$elem" == "$1" ]; then
			return 0
		fi
	done
	return 1
}

initialize_with() {
	if [ $# -eq 0 ]; then
		echo "Error: debe pasar al menos 1 parámetro para inicializar el Set"
		return 1
	fi
	
	for param in "$@"; do
		buscar_elemento "$param"
		RESULTADO=$?
		if [ $RESULTADO -eq 0 ]; then
			echo "Error: el elemento $param ya existe en el conjunto"
		else
			SET+=( "$param" )
			echo "Se ha agregado el elemento '$param' al conjunto"
		fi
	done
}

add() {
	if [ $# -ne 1 ]; then
		echo "Error: debe pasar exactamente 1 parámetro para agregar al Set"
		return 1
	fi
	
	buscar_elemento "$1"
	RESULTADO=$?
	if [ $RESULTADO -eq 0 ]; then
		echo "Error: el elemento $1 ya existe en el conjunto"
		return 1
	fi
	
	SET+=( "$1" )
	echo "Se ha agregado el elemento '$1' al conjunto"
}

remove() {
	if [ $# -eq 0 ]; then
		echo "Error: debe pasar al menos 1 parámetro para eliminar del Set"
		return 1
	fi
	
	local CANT_ELIMINADOS=0
	for param in "$@"; do
		local ENCONTRADO="false"
		local i=0
		while [ "$ENCONTRADO" == "false" ] && [ $i -lt ${#SET[@]} ]; do
			if [ "$param" == "${SET[$i]}" ]; then
				unset SET[$i]
				echo "Se ha eliminado el elemento '$param'"
				let ENCONTRADO="true"
				let CANT_ELIMINADOS++
			fi
			let i++
		done
		if [ "$ENCONTRADO" == "false" ]; then
			echo "Error: no se ha encontrado el elemento '$param'"
		fi
	done
	if [ $CANT_ELIMINADOS -eq 0 ]; then
		echo "Error: no se ha podido eliminar ningun elemento"
		return 1
	fi
}

contains() {
	if [ $# -ne 1 ]; then
		echo "Error: debe pasar exactamente 1 parámetro para buscar en el Set"
		return 1
	fi

	buscar_elemento "$1"
	RESULTADO=$?
	if [ $RESULTADO -ne 0 ]; then
		echo "Error: el elemento $param no existe en el conjunto"
		return 1
	fi
	echo "El elemento $param ya existe en el conjunto"
}

print() {
	for elem in "${SET[@]}"; do
		echo "$elem"
	done
}

print_sorted() {
	echo "$(print | sort)"
}

initialize_with "a" "b" "b" "c" "a" "d" "z" "g" "h" "h" "5" "5" "3"
add
add "a"
add "j"
remove "a" "b" "k" "c"
echo "Impresión del Set:"
print
echo "Impresión ordenada del Set:"
print_sorted
