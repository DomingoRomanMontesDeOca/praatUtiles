

	# a partir de un strings

	# obtiene nombre del elemento en es strings

	nombre_tg$ = Get string... itg

	# los caracteres antes de la extensión (en este caso, "5")

	nombre_guardar$ = left$(nombre_tg$,5)

	a = Read from file... 'directorio_objetos$'/'nombre_tg$'

	Save as text file: "'directorio_objetos_1$'/'nombre_guardar$'.TextGrid"

	
