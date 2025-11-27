sumarPosicionalmente() {
	if [[ ${#arreglo1[@]} != ${#arreglo2[@]} ]]; then
		echo "Los arreglos deben ser del mismo tamaño";
		return 1;
	fi
	TAMANIO=${#arreglo1[@]}
	for (( i = 0; i < TAMANIO; i++ )); do
		echo "La suma de los elementos de la posición $i de los vectores es $(( arreglo1[i] + arreglo2[i] ))"
	done
}

arreglo1=(1 80 65 35 2)
arreglo2=(5 98 3 41 8)
sumarPosicionalmente
SALIDA=$?
if [[ $SALIDA != 0 ]]; then
	echo "Error de salida $SALIDA"
fi
