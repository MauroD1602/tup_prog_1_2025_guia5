Proceso Estacionamiento
	Definir i, j, plaza, zonas, tipo, estacionados, contMoto, contAuto, contUtil, contCam Como Entero;
	Definir hora, contHorasAuto, contHorasMoto, contHorasUtil, contHorasCam Como Entero;
	Definir porcMoto, porcAuto, porcUtil, porcCam, porcRecAuto, porcRecMoto, porcRecUtil, porcRecCam Como Real;
	Definir recTotal, recMoto, recAuto, recUtil, recCam, precioMoto, precioAuto, precioUtil, precioCam Como Real;
	
	recTotal = 0;
	recAuto = 0;
	recMoto = 0;
	recUtil = 0;
	recCam = 0;
	
	precioMoto = 100;
	precioAuto = 200;
	precioUtil = 250;
	precioCam = 700;
	
	Escribir "Ingrese la cantidad de zonas de estacionamiento: ";
	Leer zonas;
	
	Mientras zonas < 1 Hacer
        Escribir "Error. Ingrese al menos una zona";
        Leer zonas;
    FinMientras
	
	Para i = 1 hasta zonas con paso 1 hacer
		
		contMoto = 0;
		contAuto = 0;
		contUtil = 0;
		contCam = 0;
		contHorasAuto = 0;
		contHorasMoto = 0;
		contHorasUtil = 0;
		contHorasCam = 0;
		
		Escribir "Ingrese la cantidad de plazas a ocupar en Zona: ", i;
		Leer plaza;
		
		Para j = 1 Hasta plaza Hacer
		Escribir "";
		Escribir "Ingrese el tipo de vehiculo que desea estacionar: ";
		Escribir "";
		Escribir "1- Moto (Hora: $100)";
		Escribir "2- Auto (Hora: $200)";
		Escribir "3- Utilitario (Hora: $250)";
		Escribir "4- Camion (Hora: $700)";
		Escribir "";
		Leer tipo;
		
		Escribir "";
		Escribir "Ingrese la cantidad de horas que desea estacionar: ";
		Escribir "";
		Leer hora;
		
		Segun tipo hacer
			1: 
				contMoto = contMoto + 1;
				contHorasMoto = contHorasMoto + hora;
				recMoto = recMoto + (contHorasMoto * precioMoto);
			2: 
				contAuto = contAuto + 1;
				contHorasAuto = contHorasAuto + hora;
				recAuto = recAuto + (contHorasAuto * precioAuto);
			3: 
				contUtil = contUtil + 1;
				contHorasUtil = contHorasUtil + hora;
				recUtil = recUtil + (contHorasUtil * precioUtil);
			4:
				contCam = contCam + 1;
				contHorasCam = contHorasCam + hora;
				recCam = recCam + (contHorasCam * precioCam);
		FinSegun
		FinPara
	
		
		estacionados = contMoto + contAuto + contUtil + contCam;
		
		porcRecMoto = recMoto/estacionados;
		porcRecAuto = recAuto/estacionados;
		porcRecUtil = recUtil/estacionados;
		porcRecCam  = recCam/estacionados;
		
		recTotal = recMoto + recAuto + recUtil + recCam;
		
		Escribir "";
		Escribir "Recaudacion Total Zona: ", i, " $", recTotal;
		Escribir "Porcentaje de Recaudacion de Motos: ", porcRecMoto, "%";
		Escribir "Porcentaje de Recaudacion de Autos: ", porcRecAuto, "%";
		Escribir "Porcentaje de Recaudacion de Utilitarios: ", porcRecUtil, "%";
		Escribir "Porcentaje de Recaudacion de Camiones: ", porcRecCam, "%";
		Escribir "";
		
	FinPara
	
	porcMoto = (contMoto*100.0)/estacionados;
	porcAuto = (contAuto*100.0)/estacionados;
	porcUtil = (contUtil*100.0)/estacionados;
	porcCam  = (contCam *100.0)/estacionados;
	
	Escribir "";
	Escribir "Recaudacion Total: $", recTotal;
	Escribir "Porcentaje Motos: ", porcMoto, "%";
	Escribir "Porcentaje Autos: ", porcAuto, "%";
	Escribir "Porcentaje Utilitarios: ", porcUtil, "%";
	Escribir "Porcentaje Camiones: ", porcCam, "%";
	Escribir "";
FinProceso
