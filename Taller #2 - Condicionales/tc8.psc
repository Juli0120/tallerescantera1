SubProceso consultar()
	Limpiar Pantalla;
	Escribir "Tortas";
	Escribir "1. Chocolate, 10 porciones, fresas y mango";
	Escribir "2. Genovesa, 8 porciones, cereza y chispitas chocolate";
	Escribir "3. Tres leches, 10 porciones, cobertura de dulce";
FinSubProceso

SubProceso pedido()
	Definir tortaId Como Entero;
	Limpiar Pantalla;
	Escribir "1. Chocolate";
	Escribir "2. Genovesa";
	Escribir "3. Tres leches";
	Escribir "�Cual torta desea comprar?";
	Leer tortaId;
FinSubProceso

SubProceso ventas()
	Definir cantidad3Leche,cantidadCho,cantidadGeno Como Entero;
	Escribir "�Cuantas tortas de chocolate se vendieron hoy?";
	Leer cantidadCho;
	Escribir "�Cuantas tortas de genovesa se vendieron hoy?";
	Leer cantidadGeno;
	Escribir "�Cuantas tortas de tres leches se vendieron hoy?";
	Leer cantidad3Leche;
FinSubProceso

Proceso tc8
	
	Definir usuarioId, opcion, opcionIni Como Entero;
	
	Escribir "�Que quiere hacer?";
	Escribir "1. Pedido";
	Escribir "2. Ingresar ventas";
	Leer opcionIni;
	Limpiar Pantalla;
	
	Segun opcionIni Hacer
		1:
			Escribir "�Que cliente va a comprar?";
			Escribir "1. Danna Uribe";
			Escribir "2. Pablo Escobar";
			Escribir "3. Andr�s Castro";
			Leer usuarioId;
			Limpiar Pantalla;
			
			segun usuarioId Hacer
				1:
					Escribir "Hola Danna, �Que desea hacer?";
					Escribir "1. Consultar tortas";
					Escribir "2. Realizar una compra";
					Leer opcion;
					Limpiar Pantalla;
					
					segun opcion Hacer
						1:
							consultar();
						2:
							pedido();
						De Otro Modo:
							Escribir "Esa opci�n elegida no existe";
					FinSegun
				2:
					Escribir "Hola Pablo, �Que desea hacer?";
					Escribir "1. Consultar tortas";
					Escribir "2. Realizar una compra";
					Leer opcion;
					Limpiar Pantalla;
					
					segun opcion Hacer
						1:
							consultar();
						2:
							pedido();
						De Otro Modo:
							Escribir "Esa opci�n elegida no existe";
					FinSegun
				3:
					Escribir "Hola Andr�s, �Que desea hacer?";
					Escribir "1. Consultar tortas";
					Escribir "2. Realizar una compra";
					Leer opcion;
					Limpiar Pantalla;
					
					segun opcion Hacer
						1:
							consultar();
						2:
							pedido();
						De Otro Modo:
							Escribir "Esa opci�n elegida no existe";
					FinSegun
				De Otro Modo:
					Escribir "Esa opci�n elegida no existe";
			FinSegun
		2:
			ventas();
		De Otro Modo:
			Escribir "Esa opci�n elegida no existe";
	FinSegun
FinProceso
