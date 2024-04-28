# Seleccionada una tabla
# Determina si los wav y los TextGrid están pareados totalmente.
# 


nfilas = Get number of rows

writeInfoLine: "=============", nfilas, "  archivos pareados"


for i to nfilas
	
	sonido$ = Get value: i, "Sonidos"
	sonido$ = sonido$-".wav"
	textGr$ = Get value: i, "textGrids"
	textGr$ =textGr$-".TextGrid"
  largo_tg = length(textGr$)
  largo_sn = length(sonido$)
  resta_largos = largo_tg - largo_sn
# resta_largos informa que tienen el mismo largo los nombres de los dos archivos ("0")

	if textGr$ == sonido$

		appendInfoLine: i,tab$,sonido$,tab$,textGr$,tab$," Ok!", tab$, resta_largos

	else
		appendInfoLine: i, tab$, "Problema..."
	endif


endfor
