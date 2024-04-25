
	# guardar un wav en Destino

		audio$ = Get string... i

		audio = Read from file... 'directorio_origen$'/'audio$'


		nombre_guardar$ = left$(audio$,2)


		Save as WAV file: "'directorio_destino$'/'nombre_guardar$'.wav"


#############


	# dentro de un for


	# a partir de un strings

	# obtiene nombre del elemento en el strings para abrir el archivo

	nombre_tg$ = Get string... i

	

	# los caracteres antes de la extensión (en este caso, "5").
	# esto sirve para guardar el archivo

	nombre_guardar$ = left$(nombre_tg$,5)

	a = Read from file... 'directorio$'/'nombre_tg$'

	Save as text file: "'directorio$'/'nombre_guardar$'.TextGrid"





	# opcional:


	###############################################

	nombre_guardar_2$ = nombre_guardar$ + ".wav"

	a = Read from file... 'directorio$'/'nombre_audio$'

	Save as WAV file: "'directorio$'/'nombre_guardar_2$'"

	###############################################
	
