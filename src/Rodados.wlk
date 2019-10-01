class ChevroletCorsa {
	var property color = " "
	
	method capacidad() =  4
	method velocidad() =  150
	method peso () = 1300	
}

class RenaultKwid {
	var property tAdicional = false
	
	method color() = "azul"
	method velocidad()=if (tAdicional){110}else{120}
	method capacidad()=if (tAdicional){3}else{4}
	method peso()=if (tAdicional){1200 + 150}else{1200}
		
}

object trafic {
	var property interior 
	var property motor
	
	method capacidad()=interior.capacidad()
	method velocidad()=motor.velocidad()
	method color() = "blanco"
	method peso()= 4000 + interior.peso() + motor.peso()
}

object interiorComodo{
	method capacidad()=5
	method peso()=700
}

object interiorPopular{
	method capacidad()=12
	method peso()=1000
}

object motorPulenta{
	method velocidad()=130
	method peso()=800
}

object motorBataton{
	method velocidad()=80
	method peso()=500
}

class AutoEspecial{
	var property capacidad
	var property velocidad
	var property peso
	var property color
}





















