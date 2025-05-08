Proceso EncuestaTransporte
	
    Definir encuestadores, i, j, personas, tipo Como Entero;
    Definir distancia Como Real;
	Definir bici, moto, auto, publico Como Entero;
	Definir distBici, distMoto Como Real;
	Definir contBici, contMoto Como Entero;
	
	
    Definir totalGlobal, globalBici, globalAuto, globalPublico Como Entero;
    totalGlobal = 0;
    globalBici = 0;
    globalAuto = 0;
    globalPublico = 0;
	
    Escribir "Ingrese la cantidad de encuestadores (entre 2 y 4):";
    Leer encuestadores;
	
    Mientras encuestadores < 2 o encuestadores > 4 Hacer
        Escribir "Error. Ingrese un valor entre 2 y 4:";
        Leer encuestadores;
    FinMientras
	
    Para i = 1 Hasta encuestadores Con Paso 1 hacer
		
        bici = 0;
        moto = 0;
        auto = 0;
        publico = 0;
        distBici = 0;
        distMoto = 0;
        contBici = 0;
        contMoto = 0;
		
        Escribir "ENCUESTADOR ", i;
        Escribir "Ingrese cantidad de personas encuestadas:";
        Leer personas;
		
        Para j = 1 Hasta personas Con Paso 1 hacer
            Escribir "Persona ", j;
            Escribir "Seleccione el tipo de transporte más frecuente:";
            Escribir "1. Bicicleta";
            Escribir "2. Motocicleta";
            Escribir "3. Automóvil";
            Escribir "4. Transporte público";
            Leer tipo;
			
            Mientras tipo < 1 o tipo > 4 Hacer
                Escribir "Opción inválida. Intente nuevamente:";
                Leer tipo;
            FinMientras
			
            Escribir "Ingrese la distancia recorrida (en km):";
            Leer distancia;
			
            Segun tipo Hacer
                1: 
                    bici = bici + 1;
                    distBici = distBici + distancia;
                    contBici = contBici + 1;
                    globalBici = globalBici + 1;
                2:
                    moto = moto + 1;
                    distMoto = distMoto + distancia;
                    contMoto = contMoto + 1;
                3:
                    auto = auto + 1;
                    globalAuto = globalAuto + 1;
                4:
                    publico = publico + 1;
                    globalPublico = globalPublico + 1;
            FinSegun
        FinPara
		
        totalGlobal = totalGlobal + personas;
		
        Escribir "Encuestador: ", i;
        Escribir "Cantidad de personas encuestadas: ", personas;
        Escribir "Bicicleta: ", bici;
		Escribir "Moto: ", moto;
        Escribir "Automóvil: ", auto;
        Escribir "Transporte público: ", publico;
		
        Si contBici > 0 Entonces
            Escribir "Distancia promedio en bicicleta: ", distBici / contBici, " km";
        Sino
            Escribir "Ningún encuestado conduce bicicletas";
        FinSi
		
        Si contMoto > 0 Entonces
            Escribir "Distancia promedio en motocicleta: ", distMoto / contMoto, " km";
        Sino
            Escribir "Ningún encuestado conduce motos";
        FinSi
		
    FinPara
	
    Escribir "Total de personas encuestadas: ", totalGlobal;
	
    Si totalGlobal > 0 Entonces
        Escribir "Porcentaje que usa bicicleta: ", (globalBici * 100) / totalGlobal, "%";
        Escribir "Porcentaje que usa auto: ", (globalAuto * 100) / totalGlobal, "%";
        Escribir "Porcentaje que usa transporte público: ", (globalPublico * 100) / totalGlobal, "%";
    FinSi
	
FinProceso