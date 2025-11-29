Algoritmo VerificarTrianguloRectangulo
    Definir lado1, lado2, lado3 Como Real
    Definir esTriangulo, esRectangulo Como Logico
    
    Escribir "Ingrese el primer segmento:"
    Leer lado1
    Escribir "Ingrese el segundo segmento:"
    Leer lado2
    Escribir "Ingrese el tercer segmento:"
    Leer lado3
    
    // Verificar si es un triángulo (suma de dos lados > tercer lado)
    Si (lado1 + lado2 > lado3) Y (lado1 + lado3 > lado2) Y (lado2 + lado3 > lado1) Entonces
        esTriangulo <- Verdadero
        Escribir "¡Sí se puede formar un triángulo con estos segmentos!"
        
        // Verificar si es rectángulo (Teorema de Pitágoras)
        // Ordenamos los lados para identificar la hipotenusa (mayor lado)
        Si lado1 > lado2 Y lado1 > lado3 Entonces
            esRectangulo <- (lado1^2 = lado2^2 + lado3^2)
        Sino
            Si lado2 > lado1 Y lado2 > lado3 Entonces
                esRectangulo <- (lado2^2 = lado1^2 + lado3^2)
            Sino
                esRectangulo <- (lado3^2 = lado1^2 + lado2^2)
            FinSi
        FinSi
        
        Si esRectangulo Entonces
            Escribir "Además, el triángulo es rectángulo."
        Sino
            Escribir "Sin embargo, el triángulo NO es rectángulo."
        FinSi
    Sino
        esTriangulo <- Falso
        Escribir "No se puede formar un triángulo con estos segmentos."
    FinSi
FinAlgoritmo
