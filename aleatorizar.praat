# aleatorizar


ene_para_aleatorizar = 15

tabla_para_aleatorizar = Create Table with column names: "table", ene_para_aleatorizar, { "valor" }


for i to ene_para_aleatorizar

	numero_aleatorio = randomInteger (1, ene_para_aleatorizar)

	select tabla_para_aleatorizar

	Set numeric value: i, "valor", numero_aleatorio
	
endfor

select tabla_para_aleatorizar

