#!/bin/bash

PILA=()

push() {
    local elemento="$1"
    PILA+=("$elemento")
}

pop() {
    local longitud=${#PILA[@]}
    if [[ $longitud -eq 0 ]]; then
        echo "Error: Pila vacía."
        return 1
    fi
    
    local elemento_sacado=${PILA[longitud-1]}
    
    unset PILA[longitud-1]
    
    PILA=("${PILA[@]}")
    
    echo "POP: $elemento_sacado"
}

length() {
    echo "Largo: ${#PILA[@]}"
}

print() {
    local longitud=${#PILA[@]}
    if [[ $longitud -eq 0 ]]; then
        echo "Pila vacía."
        return
    fi
    
    echo "Elementos de la PILA:"
    for elemento in "${PILA[@]}"; do
        echo "$elemento"
    done
}


if [[ $# -ne 1 ]]; then
	echo "Debe ingresar un parámetro (primer elemento a agregar a la pila)"
	exit 1
fi

echo "Agregando 10 elementos..."
push "$1"
for i in {1..9}; do
    push "E$i"
done

echo "Sacando 3 elementos:"
pop
pop
pop

echo "Largo actual:"
length

echo "Elementos restantes:"
print
