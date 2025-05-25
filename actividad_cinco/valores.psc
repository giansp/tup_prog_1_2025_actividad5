Proceso valores
	Definir energia, carbohidratos, grasas, hidratos, fibra, sodio Como Real;
	Definir porc_carbo, porc_grasas, porc_hidratos, porc_fibra, porc_sodio, cont, acu, prod_cumpli, seguir Como Entero;
	Definir final Como Logico;
	Repetir
		final <- Verdadero;
		cont <- 0;
		acu <- 0;
		Mientras final=Verdadero Hacer
			cont <- cont+1;
			Segun cont Hacer
				1:
					Escribir 'Ingrese valores de kCal';
					Leer energia;
					Si energia<100 O energia>200 Entonces
						acu <- acu+1;
						final <- falso;
					FinSi
				2:
					Escribir 'Ingrese carbohidratos en 100 gramos';
					Leer carbohidratos;
					porc_carbo <- carbohidratos/100*100;
					Si porc_carbo>15 O porc_carbo<0 Entonces
						acu <- acu+1;
						final <- falso;
					FinSi
				3:
					Escribir 'Ingrese cantidad de grasas';
					Leer grasas;
					porc_grasas <- grasas/100*100;
					Si porc_grasas<1 O porc_grasas>13 Entonces
						acu <- acu+1;
						final <- falso;
					FinSi
				4:
					Escribir 'Ingrese cantidad de fibra';
					Leer fibra;
					porc_fibra <- fibra/100*100;
					Si porc_fibra>2 O porc_fibra<0 Entonces
						acu <- acu+1;
						final <- falso;
					FinSi
				5:
					Escribir 'Ingrese cantidad de sodio';
					Leer sodio;
					porc_sodio <- sodio/100*100;
					Si porc_sodio>2 O porc_sodio<0 Entonces
						acu <- acu+1;
						final <- falso;
					FinSi
				6:
					prod_cumpli <- prod_cumpli+1;
					final <- falso;
			FinSegun
		FinMientras
		Escribir 'Ingrese 1 para seguir';
		Escribir 'Ingrese 2 para terminar';
		Leer seguir;
	Mientras Que seguir=1
	Escribir 'Cantidad de productos aptos';
	Escribir prod_cumpli;
	Escribir 'Cantidad de productos desechados';
	Escribir acu;
FinProceso
