Algoritmo Proyecto_sistema_de_costos
	
	Definir Producto Como Caracter
	Definir CantidadComprada Como Entero
	Definir PrecioProducto Como Entero
	Definir CostoEnvio Como Entero
	Definir CuponDescuentoEnPorcentaje Como Real
	Definir Total Como Real
	Definir TotalParcial Como Real

	
	
	Escribir "Ingrese nombre del Produto:"
	Leer Producto
	
	Escribir "Ingrese cantidad a comprar:"
	Leer CantidadComprada
	
	Escribir "Ingrese precio del producto:"
	Leer PrecioProducto
	
	Escribir "Ingrese Porcentaje de Cupon de Descuento:"
	Leer CuponDescuentoEnPorcentaje
	
	CuponDescuentoEnPorcentaje = CuponDescuentoEnPorcentaje/100
	
	//Se calcula total parcial con cupon descuento 
	TotalParcial = PrecioProducto*CantidadComprada*(1-CuponDescuentoEnPorcentaje)
	
	
	//Se considera el IVA igual al 19% 
	
	TotalParcial= TotalParcial*1.19
	
	//Descuento por cantidad
	
	Si CantidadComprada > 1 Y CantidadComprada <= 3 Entonces
		TotalParcial = TotalParcial*0.9
		Escribir "Tiene un 10% descuento por volumen en su compra"
		
	SiNo
		
		si CantidadComprada> 3 Entonces
			TotalParcial = TotalParcial*0.8
			Escribir "Tiene un 20% de descuento por volumen en su compra"
			
		SiNo
			Escribir "Tiene un 0% de descuento en su compra"
			
			
		FinSi
		
	FinSi
	
	//Costo de Envio Se considera 
	//Costo fijo de envio $15
	//Peso fijo por unidad comprada 3 Kg 
	//Cada por Kg de producto $2

	
	CostoEnvio = 15+ 2*3*CantidadComprada
	
	Total=CostoEnvio+TotalParcial
	
	Escribir "Detalle de lo Comprado:"
	
	Escribir "Usted compro el siguiente producto:", Producto
	Escribir "La cantidad comprada fue de:", CantidadComprada
	Escribir "El precio del producto es de = $", PrecioProducto
	Escribir "Usted tenia un cupon de descueto de  = %", CuponDescuentoEnPorcentaje*100
	Escribir "El costo de envio es de = $", CostoEnvio
	Escribir "El precio final de su producto con IVA mas el envio es de = $", Total
	

	
FinAlgoritmo
