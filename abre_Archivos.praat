
# Selecciona el directorio donde están los archivos

directorio$ = chooseDirectory$ ("Elija directorio con archivos")

strings1 = Create Strings as file list... lista_1 'directorio$'/*.wav

# la extensión puede ser otra, ciertamente

ene_archivos = Get number of strings



for i to ene_archivos
	select strings1
# es lo mismo que
# select Strings lista_1

  audio$ = Get string... i

  audio = Read from file... 'directorio$'/'audio$'

endfor
