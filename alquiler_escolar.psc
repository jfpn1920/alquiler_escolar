Algoritmo alquiler_escolar
	Definir opcion, totalAlquileres Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir estudiante Como Caracter
	Definir recurso Como Caracter
	Definir categoria Como Caracter
	Definir fechaPrestamo Como Caracter
	Definir fechaDevolucion Como Caracter
	Definir costo Como Real
	Definir estado Como Caracter
	Dimension id[100]
	Dimension estudiante[100]
	Dimension recurso[100]
	Dimension categoria[100]
	Dimension fechaPrestamo[100]
	Dimension fechaDevolucion[100]
	Dimension costo[100]
	Dimension estado[100]
	totalAlquileres <- 0
	siguienteID <- 1
	//-------------------------------------//
	//--|menu_principal_alquiler_escolar|--//
	//-------------------------------------//
	Repetir
		Escribir "menu principal alquiler escolar"
		Escribir "1) registrar alquiler"
		Escribir "2) editar alquiler"
		Escribir "3) eliminar alquiler"
		Escribir "4) buscar alquiler"
		Escribir "5) listar alquileres"
		Escribir "6) ver detalles del alquiler"
		Escribir "7) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//------------------------//
			//--|registrar_alquiler|--//
			//------------------------//
			1:
				Escribir "registrar alquiler"
				id[totalAlquileres + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalAlquileres + 1]
				Escribir "ingrese el nombre del estudiante:"
				Leer estudiante[totalAlquileres + 1]
				Escribir "ingrese el recurso escolar:"
				Leer recurso[totalAlquileres + 1]
				Escribir "ingrese la categoria:"
				Leer categoria[totalAlquileres + 1]
				Escribir "ingrese la fecha de prestamo:"
				Leer fechaPrestamo[totalAlquileres + 1]
				Escribir "ingrese la fecha de devolucion:"
				Leer fechaDevolucion[totalAlquileres + 1]
				Escribir "ingrese el costo:"
				Leer costo[totalAlquileres + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalAlquileres + 1]
				totalAlquileres <- totalAlquileres + 1
				Escribir "alquiler registrado correctamente."
			//-----------------------------//
			//--|editar_alquiler_escolar|--//
			//-----------------------------//
			2:
				Escribir "editar alquiler"
				Si totalAlquileres = 0 Entonces
					Escribir "no hay alquileres registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalAlquileres Hacer
						Escribir id[i], " | ", estudiante[i], " | ", recurso[i], " | ", categoria[i], " | ", fechaPrestamo[i], " | ", fechaDevolucion[i], " | ", costo[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del alquiler:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlquileres Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo estudiante:"
							Leer estudiante[i]
							Escribir "ingrese el nuevo recurso escolar:"
							Leer recurso[i]
							Escribir "ingrese la nueva categoria:"
							Leer categoria[i]
							Escribir "ingrese la nueva fecha de prestamo:"
							Leer fechaPrestamo[i]
							Escribir "ingrese la nueva fecha de devolucion:"
							Leer fechaDevolucion[i]
							Escribir "ingrese el nuevo costo:"
							Leer costo[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "alquiler editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un alquiler con ese id."
					FinSi
				FinSi
			//-------------------------------//
			//--|eliminar_alquiler_escolar|--//
			//-------------------------------//
			3:
				Escribir "eliminar alquiler"
				Si totalAlquileres = 0 Entonces
					Escribir "no hay alquileres registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalAlquileres Hacer
						Escribir id[i], " | ", estudiante[i], " | ", recurso[i], " | ", categoria[i], " | ", fechaPrestamo[i], " | ", fechaDevolucion[i], " | ", costo[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del alquiler:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlquileres Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalAlquileres Entonces
								Para j <- i Hasta totalAlquileres - 1 Hacer
									id[j] <- id[j+1]
									estudiante[j] <- estudiante[j+1]
									recurso[j] <- recurso[j+1]
									categoria[j] <- categoria[j+1]
									fechaPrestamo[j] <- fechaPrestamo[j+1]
									fechaDevolucion[j] <- fechaDevolucion[j+1]
									costo[j] <- costo[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalAlquileres <- totalAlquileres - 1
							Escribir "alquiler eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un alquiler con ese id."
					FinSi
				FinSi
			//-----------------------------//
			//--|buscar_alquiler_escolar|--//
			//-----------------------------//
			4:
				Escribir "buscar alquiler"
				Si totalAlquileres = 0 Entonces
					Escribir "no hay alquileres registrados."
				SiNo
					Escribir "ingrese el id del alquiler:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlquileres Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", estudiante[i], " | ", recurso[i], " | ", categoria[i], " | ", fechaPrestamo[i], " | ", fechaDevolucion[i], " | ", costo[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un alquiler con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|listar_alquileres|--//
			//-----------------------//
			5:
				Escribir "listar alquileres"
				Si totalAlquileres = 0 Entonces
					Escribir "no hay alquileres registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalAlquileres Hacer
						Escribir id[i], " | ", estudiante[i], " | ", recurso[i], " | ", categoria[i], " | ", fechaPrestamo[i], " | ", fechaDevolucion[i], " | ", costo[i], " | ", estado[i]
					FinPara
				FinSi
			//-----------------------------------//
			//--|ver_detalles_alquiler_escolar|--//
			//-----------------------------------//
			6:
				Escribir "ver detalles del alquiler"
				Si totalAlquileres = 0 Entonces
					Escribir "no hay alquileres registrados."
				SiNo
					Escribir "ingrese el id del alquiler:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalAlquileres Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del alquiler"
							Escribir "id: ", id[i]
							Escribir "estudiante: ", estudiante[i]
							Escribir "recurso escolar: ", recurso[i]
							Escribir "categoria: ", categoria[i]
							Escribir "fecha de prestamo: ", fechaPrestamo[i]
							Escribir "fecha de devolucion: ", fechaDevolucion[i]
							Escribir "costo: ", costo[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un alquiler con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			7:
				Escribir "gracias por utilizar alquiler escolar."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo