Proceso OrdenarNombres
	
    Dimension nombres[5]    
	
    Definir i, j Como Entero
    Definir aux Como Cadena
	
    Para i <- 1 Hasta 5 Con Paso 1
        Escribir "Introduce el nombre ", i, ": "
        Leer nombres[i]
    FinPara
	
    Para i <- 1 Hasta 4
        Para j <- i+1 Hasta 5
            Si nombres[i] < nombres[j] Entonces
                aux <- nombres[i]
                nombres[i] <- nombres[j]
                nombres[j] <- aux
            FinSi
        FinPara
    FinPara
	
    Escribir "Nombres ordenados de mayor a menor:"
    Para i <- 1 Hasta 5
        Escribir nombres[i]
    FinPara
	
FinProceso
