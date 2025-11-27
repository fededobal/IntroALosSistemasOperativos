for archivo in *; do
	if [[ -f "$archivo" ]]; then
		echo "$archivo" | tr '[:lower:][:upper:]' '[:upper:][:lower:]' | tr -d 'aA'
	fi
done
