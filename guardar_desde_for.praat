
	nombre_tg$ = Get string... itg

	nombre_guardar$ = left$(nombre_tg$,5)

	a = Read from file... 'directorio_objetos$'/'nombre_tg$'

	Save as text file: "'directorio_objetos_1$'/'nombre_guardar$'.TextGrid"
