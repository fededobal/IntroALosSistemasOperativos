source ./Set.sh

if [ $# -gt 1 ]; then
	echo "Error: se puede pasar un parámetro como máximo (un valor máximo para el rango de nros)"
	return 1
fi

VALOR_MAX=99
if [ $# -eq 1 ]; then
	let VALOR_MAX=$1
fi


initialize
echo "JUEGO DE BINGO INICIADO"

JUEGO_ACTIVO="true"
TOTAL_NUMEROS=$((VALOR_MAX + 1))
CANTIDAD_CANTADOS=0

while [ "$JUEGO_ACTIVO" == "true" ]; do
    if [ $CANTIDAD_CANTADOS -eq $TOTAL_NUMEROS ]; then
        echo "Se han cantado todos los números posibles ($TOTAL_NUMEROS)"
        echo "Finalizando partida..."
        break
    fi

    NUMERO_VALIDO="false"
    while [ "$NUMERO_VALIDO" == "false" ]; do
        RAND=$(( RANDOM % (VALOR_MAX + 1) ))
        
        buscar_elemento "$RAND"
        
        if [ $? -ne 0 ]; then
            NUMERO_VALIDO="true"
            NUMERO_A_CANTAR=$RAND
        fi
    done

    add "$NUMERO_A_CANTAR" > /dev/null
    let CANTIDAD_CANTADOS++
    
    echo "NÚMERO: $NUMERO_A_CANTAR"
    
    read -p "Presione ENTER para el siguiente número o escriba 'BINGO' para terminar: " OPCION
    
    if [[ "$OPCION" == "BINGO" ]]; then
        echo "¡¡¡ B I N G O !!! Partida finalizada."
        JUEGO_ACTIVO="false"
    fi
done

echo "RESUMEN DE LA PARTIDA (Ordenados):"
print_sorted
