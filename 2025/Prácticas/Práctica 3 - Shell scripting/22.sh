analizarArreglo() {
	local cantImpares=0
	echo "Números pares:"
	for num in "${arreglo[@]}"; do
		if [[ $(( $num % 2 )) == 0 ]]; then
			echo "$num"
		else
			let cantImpares++
		fi
	done
	echo "Cantidad de números impares: $cantImpares"
}

arreglo=(2 3 5 7 11 13 17 19 23)
analizarArreglo
