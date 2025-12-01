Algoritmo menu_juegos
	Definir opcion Como Entero
	
	Escribir "----- MENU -----"
	Escribir "1. Adivinar un numero"
	Escribir "2. Comprobar si se puede formar un triangulo"
	Escribir "3. Calcular la media"
	Escribir "4. Salir"
	Escribir "Elige una opcion:"
	Leer opcion
	
	Segun opcion Hacer
		
		1:
			// JUEGO ADIVINAR NUMERO
			Definir numero_secreto, intento Como Entero
			numero_secreto <- Aleatorio(1,10)
			
			Escribir "Adivina un numero entre 1 y 10:"
			Leer intento
			
			Si intento = numero_secreto Entonces
				Escribir "¡Correcto! Has adivinado el numero"
			SiNo
				Escribir "Incorrecto. El numero era: ", numero_secreto
			FinSi
			
		2:
			// COMPROBAR SI FORMA TRIANGULO
			Definir lado1, lado2, lado3 Como Real
			
			Escribir "Introduce el primer lado:"
			Leer lado1
			Escribir "Introduce el segundo lado:"
			Leer lado2
			Escribir "Introduce el tercer lado:"
			Leer lado3
			
			Si (lado1 + lado2 > lado3) Y (lado1 + lado3 > lado2) Y (lado2 + lado3 > lado1) Entonces
				Escribir "Si se puede formar un triangulo"
			SiNo
				Escribir "No se puede formar un triangulo"
			FinSi
			
		3:
			// CALCULAR MEDIA
			Definir cantidad, i Como Entero
			Definir numero, suma, media Como Real
			
			suma <- 0
			
			Escribir "¿Cuantos numeros vas a introducir?"
			Leer cantidad
			
			Para i <- 1 Hasta cantidad
				Escribir "Introduce el numero ", i, ":"
				Leer numero
				suma <- suma + numero
			FinPara
			
			media <- suma / cantidad
			
			Escribir "La media es: ", media
			
		4:
			Escribir "Saliendo del programa..."
			
		De Otro Modo:
			Escribir "Opcion no valida"
			
	FinSegun
	
FinAlgoritmo
