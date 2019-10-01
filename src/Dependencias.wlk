import Rodados.*

class Dependencia{
	var flota = []
	var property empleados = 0
	
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
	
}




