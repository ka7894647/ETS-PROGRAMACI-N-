Algoritmo ParesONones
    Definir eleccionUsuario, eleccionMaquina, suma Como Entero
    Definir opcionUsuario, opcionMaquina Como Cadena
    Definir jugarOtravez Como Logico
    
    Repetir
        // La máquina toma la iniciativa
        Escribir "=== JUEGO DE PARES O NONES ==="
        Escribir "Máquina: ¿Quieres pares o nones?"
        Escribir "1. Pares"
        Escribir "2. Nones"
        Escribir "Selecciona tu opción (1 o 2): "
        Leer eleccionUsuario
        
        // Validar entrada del usuario
        Mientras eleccionUsuario < 1 O eleccionUsuario > 2 Hacer
            Escribir "Opción inválida. Por favor selecciona 1 (Pares) o 2 (Nones): "
            Leer eleccionUsuario
        FinMientras
        
        // La máquina elige automáticamente la opción contraria
        Si eleccionUsuario = 1 Entonces
            opcionUsuario = "Pares"
            opcionMaquina = "Nones"
            eleccionMaquina = 2
        Sino
            opcionUsuario = "Nones"
            opcionMaquina = "Pares"
            eleccionMaquina = 1
        FinSi
        
        Escribir ""
        Escribir "Tú has elegido: ", opcionUsuario
        Escribir "La máquina elige: ", opcionMaquina
        Escribir ""
        
        // Cada jugador elige un número
        Escribir "Ahora elige un número (0-10): "
        Leer numeroUsuario
        
        // Validar número del usuario
        Mientras numeroUsuario < 0 O numeroUsuario > 10 Hacer
            Escribir "Número inválido. Por favor elige un número entre 0 y 10: "
            Leer numeroUsuario
        FinMientras
        
        // La máquina elige un número aleatorio
        numeroMaquina <- azar(11) // Números del 0 al 10
        Escribir "La máquina elige el número: ", numeroMaquina
        
        // Calcular la suma
        suma <- numeroUsuario + numeroMaquina
        Escribir ""
        Escribir "La suma es: ", numeroUsuario, " + ", numeroMaquina, " = ", suma
        
        // Determinar el ganador
        Si suma % 2 = 0 Entonces
            // La suma es par
            Escribir "Resultado: PAR"
            Si eleccionUsuario = 1 Entonces
                Escribir "¡GANASTE TÚ! Elegiste pares y la suma es par."
            Sino
                Escribir "¡GANÓ LA MÁQUINA! Elegiste nones pero la suma es par."
            FinSi
        Sino
            // La suma es impar
            Escribir "Resultado: IMPAR"
            Si eleccionUsuario = 2 Entonces
                Escribir "¡GANASTE TÚ! Elegiste nones y la suma es impar."
            Sino
                Escribir "¡GANÓ LA MÁQUINA! Elegiste pares pero la suma es impar."
            FinSi
        FinSi
        
        Escribir ""
        Escribir "¿Quieres jugar otra vez? (s/n): "
        Leer respuesta
        
        jugarOtravez <- Minusculas(respuesta) = "s"
        
        Si jugarOtravez Entonces
            Escribir ""
            Escribir "================================="
            Escribir ""
        FinSi
        
    Hasta Que NO jugarOtravez
    
    Escribir "¡Gracias por jugar!"
FinAlgoritmo