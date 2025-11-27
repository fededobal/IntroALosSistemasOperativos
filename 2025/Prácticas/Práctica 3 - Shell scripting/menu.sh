PS3="Ingrese el número de la opción a ejecutar (o '11' para Salir): "

echo "          MENÚ DE COMANDOS AMIGABLE CON EL USUARIO        "

select OPCION in "mostrar.sh" "Cálculo por entrada" "Cálculo por parámetros 1" "Cálculo por parámetros 2" "Números del 1 al 100 con sus cuadrados" "Listar, DondeEstoy y QuienEsta" "Renombrando archivos" "Reporte de extensiones" "Intercambio y supresión de caracteres con tr" "Verificación con timer" "Salir"
do
    case $OPCION in
	"mostrar.sh")
            echo "-> Ejecutando mostrar.sh..."
            ./mostrar.sh
            ;;
	"Cálculo por entrada")
            echo "-> Ejecutando Cálculo por entrada..."
            ./12a.sh
            ;;
	"Cálculo por parámetros 1")
            echo "-> Ejecutando Cálculo por parámetros 1..."
            read -p "Ingrese el primer nro: " NRO1
            read -p "Ingrese el segundo nro: " NRO2
            ./12b.sh "$NRO1" "$NRO2"
            ;;
	"Cálculo por parámetros 2")
            echo "-> Ejecutando Cálculo por parámetros 2..."
            read -p "Ingrese el primer nro: " NRO1
            read -p "Ingrese la operación (+,-,*,%): " OP
            read -p "Ingrese el segundo nro: " NRO2
            ./12c.sh "$NRO1" "$OP" "$NRO2"
            ;;
	"Números del 1 al 100 con sus cuadrados")
	    echo "-> Ejecutando Números del 1 al 100 con sus cuadrados..."
	    ./13a.sh
	    ;;
	"Listar, DondeEstoy y QuienEsta")
    	    echo "-> Ejecutando Listar, DondeEstoy y QuienEsta..."
	    ./13b.sh
	    ;;
	"Renombrando archivos")
	    echo "-> Ejecutando Renombrando archivos..."
	    read -p "Ingrese la opción: " OPCION
	    read -p "Ingrese el directorio: " DIR
	    read -p "Ingrese la cadena: " CADENA
	    ./14.sh "$OPCION" "$DIR" "$CADENA"
	    ;;
	"Reporte de extensiones")
	    echo "-> Ejecutando Reporte de extensiones..."
	    read -p "Ingrese la extensión: " EXTENSION
	    ./16.sh "$EXTENSION"
	    ;;
	"Intercambio y supresión de caracteres con tr")
	    echo "-> Ejecutando Intercambio y supresión de caracteres con tr..."
	    ./17.sh
	    ;;
	"Verificación con timer")
	    echo "-> Ejecutando Verificación con timer..."
	    read -p "Ingrese el usuario: " USER
	    ./18.sh "$USER"
	    ;;
        "Salir")
            echo "Saliendo del Menú de Comandos."
            break
            ;;
        *)
            echo "Opción inválida. Por favor, ingrese el número asociado a una de las opciones."
            ;;
    esac
done
