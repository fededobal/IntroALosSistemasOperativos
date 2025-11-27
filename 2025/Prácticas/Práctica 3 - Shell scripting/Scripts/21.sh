productoria() {
	local aux=1;
	for n in "${num[@]}"; do
		echo "$n"
		aux=$(( aux*n ))
	done
	echo "Productoria de (${num[@]}) = $aux"
}
num=(10 3 5 7 9 3 5 4)
productoria
