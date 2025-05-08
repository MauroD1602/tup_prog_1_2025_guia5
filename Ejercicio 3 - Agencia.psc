Proceso Agencia
	Definir i, vendedor, boleto, boletosTotales, cantidad, contTele, contQuini, contToto Como Entero;
	Definir recTotal, recVendedor, recTele, recTele1, recQuini, recQuini1, recToto, recToto1, mejor, mayorRecaudacion Como Real;
	Definir porcTele, porcQuini, porcToto, precioCarton, montoVenta Como Real;
	Definir aceptar Como Caracter;
	
	recTotal = 0;
	recTele1 = 0;
	recQuini1 = 0;
	recToto1 = 0;
	mayorRecaudacion = 0;
	mejor = 0;
	
	Escribir "Ingrese la cantidad de vendedores (entre 2 y 4):";
    Leer vendedor;
	
    Mientras vendedor < 2 o vendedor > 4 Hacer
        Escribir "Error. Ingrese un valor entre 2 y 4:";
        Leer vendedor;
    FinMientras
	
	Para i = 1 hasta vendedor Con Paso  1 Hacer
		
		recVendedor = 0;
		recQuini = 0;
		recTele = 0;
		recToto = 0;
		contQuini = 0;
		contTele = 0;
		contToto = 0;
		
		Escribir "Vendedor :", i;
		
		Repetir
			
		Escribir "";
		Escribir "Seleccione un boleto: ";
		Escribir "1- Cartón del Tele Bingo. - $400";
		Escribir "2- Un cartón de Quini seis. - $800";
		Escribir "3- Un cartón del Toto Bingo. - $750"; 
		Leer boleto;
	
		Escribir "Cantidad: ";
		Leer cantidad;
	
			Segun boleto Hacer
				1:
					precioCarton = 400;
					contTele = contTele + cantidad;
					recTele  = cantidad * precioCarton;
			
				2:
					precioCarton = 800;
					contQuini = contQuini + cantidad;
					recQuini  = cantidad * precioCarton;
			
				3:
					precioCarton = 750;
					contToto = contToto + cantidad;
					recToto  = cantidad * precioCarton;
			
			FinSegun
			
			montoVenta = cantidad*precioCarton;
			recVendedor = recVendedor + montoVenta;
			
			Escribir "Total a pagar: ", montoVenta;
			Escribir "";
			
		Escribir "¿Desea registrar otra venta? (S/N)";
		Leer aceptar;
	Hasta Que aceptar <> "S" o aceptar <> "s"
	
	Escribir "";
	Escribir "Vendedor :", i;
	Escribir "Recaudacion Total: ", recVendedor;
	Escribir "Recaudacion Tele Bingo: $", recTele,  ", boletos vendidos: ", contTele;
	Escribir "Recaudacion Quini Seis: $", recQuini, ", boletos vendidos: ", contQuini;
	Escribir "Recaudacion Toto Bingo: $", recToto,  ", boletos vendidos: ", contToto;
	Escribir "";
	
	recTotal = recTotal + recVendedor;
	recTele1 = recTele1 + recTele;
	recQuini1 = recQuini1 + recQuini;
	recToto1 = recToto1 + recToto;
	
	Si recVendedor > mayorRecaudacion Entonces
		mayorRecaudacion = recVendedor;
		mejor = i;
	FinSi
	
FinPara

	porcTele  = (recTele1 * 100.0)/recTotal;
	porcQuini = (recQuini1 * 100.0)/recTotal;
	porcToto  = (recToto1 * 100.0)/recTotal;
		
	Escribir "";
	Escribir "Recaudacion Total: ", recTotal;
	Escribir "Recaudacion Tele Bingo: $", recTele1,  ", ", porcTele, "%";
	Escribir "Recaudacion Quini Seis: $", recQuini1, ", ", porcQuini,"%";
	Escribir "Recaudacion Toto Bingo: $", recToto1,  ", ", porcToto, "%";
	Escribir "";
	Escribir "Mejor Vendedor: ", mejor;
	Escribir "";
FinProceso
