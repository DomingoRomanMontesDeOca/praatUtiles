

	# a partir de un strings

	# obtiene nombre del elemento en es strings

	nombre_tg$ = Get string... itg

	# los caracteres antes de la extensión (en este caso, "5")

	nombre_guardar$ = left$(nombre_tg$,5)

	a = Read from file... 'directorio$'/'nombre_tg$'

	Save as text file: "'directorio$'/'nombre_guardar$'.TextGrid"

	# opcional:


	###############################################

	nombre_guardar_2$ = nombre_guardar$ + ".wav"

	a = Read from file... 'directorio$'/'nombre_audio$'

	Save as WAV file: "'directorio$'/'nombre_guardar_2$'"

	###############################################
	
