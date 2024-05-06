# Guarda gráfico de oscilograma y espectrograma
# con transcripcion

# v.0

# elije directorios con wav y TextGrid

directorio$ = chooseDirectory$ ("Elija directorio con archivos")
strings1 = Create Strings as file list... lista_1 'directorio$'/*.wav

strings2 = Create Strings as file list... lista_2 'directorio$'/*.TextGrid



ene_archivos = Get number of strings


for i to ene_archivos

	select strings1

	audio$ = Get string... i

	nombre_guardar$ = audio$-".wav"

	audio = Read from file... 'directorio$'/'audio$'

	espectrograma = To Spectrogram: 0.005, 5000, 0.002, 20, "Gaussian"

	select strings2

	tg$ = Get string... i

	tg = Read from file... 'directorio$'/'tg$'

	Erase all

	Select inner viewport: 0.5, 8, 0.5, 2

	select audio

	Draw: 0, 0, 0, 0, "no", "curve"

	Draw inner box

	Select inner viewport: 0.5, 8, 2, 4


	select espectrograma

	Paint: 0, 0, 0, 0, 100, "yes", 50, 6, 0, "no"

	Draw inner box

	Select inner viewport: 0.5,8, 0.5, 4.87

	select tg

	Draw: 0, 0, "no", "yes", "no"

	
	Select outer viewport: 0.5, 8, 0.5, 4.87

	Save as 300-dpi PNG file: "'directorio$'/'nombre_guardar$'_transc.png"

	select audio
	plus espectrograma
	plus tg

	Remove
	
endfor
