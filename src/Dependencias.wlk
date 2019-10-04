import Rodados.*

class Dependencia{
	var flota = []
	var property empleados = 0
	var registroDePedidos = []
	
	method agregarAFlota(rodado){
		flota.add(rodado)
	}
	
	method quitarDeLaFlota(rodado){
		flota.remove(rodado)
	}
	
	method flotaTieneAlMenos(numero){
		return flota.size() >= numero
	}
	
	method pesoTotalFlota(){
		return flota.sum({c=> c.peso()})
	}
	
	method estaBienEquipadaCant(){
		return self.flotaTieneAlMenos(3)
	}
	
	method estaBienEquipadaVel(){
		return flota.all({v => v.velocidad() >= 100})
	}
	
	method estaBienEquipada(){
		return  self.estaBienEquipadaCant() and self.estaBienEquipadaVel()	
	}
	
	method flotaDeColor(color){
	return flota.filter(color)
	}
	
	method capacidadTotalEnColor(color){
		return self.flotaDeColor(color).sum({c => c.capacidad()})
	}
	
	method colorDelRodadoMasRapido(){
		return flota.max({r => r.velocidad()}).color()
	}
	
	method capacidadTotalFlota(){
		return flota.sum({c => c.capacidad()})
	}
	
	method  capacidadFaltante(){
		return 0.max(empleados - self.capacidadTotalFlota())
	}
	
	method esGrande(){
		return self.empleados() >= 40 and self.flotaTieneAlMenos(5)
	}
	
	method agregarPedidos(pedido){
		registroDePedidos.add(pedido)
	}
	
	method quitarPedidos(pedido){
		registroDePedidos.remove(pedido)
	}
	
	method totalPasajerosDePedidos(){
		return registroDePedidos.sum({s => s.capacidad()})
	}
	// CUANDO CUESTA , SEPARAR EN VARIOS METODOS
	method esIncompatibleElColorParaTodos(color){
		return registroDePedidos.all({p => })
	}
	
	method registrosNoPuedenSerSatisfechos(listaRodados){
		// filtrar primero por pedidos  que algun auto no pueda satisfacer
		listaRodados.forEach()
	}
	
	// method algun auto satisface el pedido(pedido)
	// return flota.any( v=> pedido.satisface(v) )
	
	
}




