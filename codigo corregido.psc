Funcion LlamarAMiFuncion(N, MiArray)
	
	Escribir "Array modificado en el programa principal:"
	Para i <- 1 Hasta N
		Escribir MiArray[i]
	FinPara
	
FinFuncion


Algoritmo array
	
	Definir N, i Como Entero
	Dimension MiArray[10]
	
	Escribir "Ingrese el tamaño del array (<10): "
	Leer N
	
	// Llenar el array
	Para i <- 1 Hasta N
		MiArray[i] <- i * 2
	FinPara
	
	// Llamar a la función
	LlamarAMiFuncion(N, MiArray)
	
FinAlgoritmo
