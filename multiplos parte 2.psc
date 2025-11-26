Algoritmo sin_titulo
	
    Repetir
        Escribir "Dame el radio número 1"
        Leer radio_numero1
		
        Escribir "Dame el radio número 2"
        Leer radio_numero2
    Hasta Que (radio_numero2 > radio_numero1)
	
    Definir area Como Real
	
    area <- PI * (radio_numero2^2 - radio_numero1^2)
	
    Escribir "El área de la corona circular es: ", area
	
FinAlgoritmo
