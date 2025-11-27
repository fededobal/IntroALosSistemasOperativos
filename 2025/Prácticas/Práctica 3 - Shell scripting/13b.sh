PS3="Seleccione una opción (1-4): "
select opcion in Listar DondeEstoy QuienEsta Salir
do
    case $opcion in
        Listar)
            echo "--- Listado del contenido (ls -l) ---"
            ls -l
            ;;
        DondeEstoy)
            echo "--- Ruta actual (pwd) ---"
            pwd
            ;;
        QuienEsta)
            echo "--- Usuarios conectados (who) ---"
            who
            ;;
        Salir)
            echo "Saliendo del menú."
            break
            ;;
        *)
            echo "Opción inválida: $REPLY. Por favor, ingrese el número de la opción deseada."
            ;;
    esac
done
