if [[ $# != 3 ]]; then
	echo "Se necesitan exactamente tres parámetros";
	exit 1;
fi
OPCION=$1
DIR=$2
CADENA=$3
if [[ $OPCION == "-a" ]]; then
	for archivo in "$DIR"*; do
		mv "$archivo" "$archivo$CADENA"
	done
elif [[ $OPCION == "-b" ]]; then
	for full_path in "$DIR"*; do
        	filename=$(basename "$full_path")
        	directory=$(dirname "$full_path")
        	mv "$full_path" "$directory/$CADENA$filename"
	done
fi;
