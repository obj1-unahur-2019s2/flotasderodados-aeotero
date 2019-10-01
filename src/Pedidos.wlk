class Pedidos{
	var property distancia
	var property tiempoMaximo
	var property capacidad
	var property listaDeColoresIncompatibles = []
	
	method acelerar(){
		tiempoMaximo -=1
	}

	method relajar(){
		tiempoMaximo += 1
	}
}

para que un AUTO satisfaga un pedido tiene que
10km/h mas  que la velocidad pedida
la capacidad sea igual o mayor al pedido
que el auto no sea de un color incompatible


tiene que ser pedido.satisface(auto)