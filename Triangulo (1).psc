Algoritmo sin_titulo
	Escribir "Escribe el segmento 1"
	Leer segmento1
	Escribir "Escribe el segmento 2"
	Leer segmento2
	Escribir "Escribe el segmento 3"
Leer segmento3
Si segmento1+segmento2 > segmento3 y segmento2+segmento3 > segmento1 y segmento1+segmento3 > segmento2 Entonces
	Escribir "Se pueden formar un triangulo"
	SiNo
		Escribir "No se puede formar un triangulo fallado"
	FinSi
		
Si segmento1 > segmento2 y segmento1 > segmento3 Entonces
	cat1 = segmento2
	cat2 = segmento3
	hip = segmento1
	Escribir "El segmento1 es la hipotenusa"
	Escribir "El area es:" cat1*cat2/2 = area
FinSi
Si segmento2 > segmento3 y segmento2 > segmento1 Entonces
	cat1 = segmento3
	cat2 = segmento1
	hip = segmento2
	Escribir "El segmento2 es la hipotenusa"
	Escribir "El area es:" cat1*cat2/2 = area
	FinSi
Si segmento3 > segmento1 y segmento3 > segmento2 Entonces
	cat1 = segmento1
	cat2 = segmento2
	hip = segmento3
	Escribir "El segmento3 es la hipotenusa"
	SiNo
		Escribir "No hay hipotenusa y por tanto no es un triangulo réctangulo"
		Escribir "El area es:" cat1*cat2/2 = area
FinSi
FinAlgoritmo
