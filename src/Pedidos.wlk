import Rodados.*

class Pedidos{
	
	var property distanciaARecorrer 
	var property tiempoMaximo = 0
	var property capacidad = 0
	var property listaDeColoresIncompatibles = []
	
	method acelerar(){
		tiempoMaximo = 1.max(tiempoMaximo - 1)
	}

	method relajar(){
		tiempoMaximo += 1
	}
	
	method velocidadPedida(){
		return distanciaARecorrer / tiempoMaximo
	}
	
	method satisfaceVelocidad(rodado){
		return rodado.velocidad() >= self.velocidadPedida() + 10
	}
	
	method satisfaceCapacidad(rodado){
		return rodado.capacidad() >= capacidad
	}
	
	method satisfaceColor(rodado){
		return not listaDeColoresIncompatibles.contain(rodado.color())
	}
	
	method satisfaceElPedido(rodado){
		return self.satisfaceVelocidad(rodado) and self.satisfaceCapacidad(rodado) 
		and self.satisfaceColor(rodado)
	}
}
