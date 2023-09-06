
import gustos.*
const golosinas = [alfajor,caramelo,chupetin,chocolatin,golocinaBaniada,oblea,pastillaTuttiFrutti]

object alfajor {
	var peso = 300
	method precio() = 12
	method peso() = peso
	method gusto() = chocolate
	method esLibreDeGluten() = false
	method recibioMordisco(){
		peso = 0.max(peso * 0.8)
	}
}
object bombon {
	var peso = 15
	method precio() = 5
	method peso() = peso
	method gusto() = frutilla
	method esLibreDeGluten() = true
	method recibioMordisco(){
		peso = 0.max((peso * 0.8) - 1)
	}
}
object caramelo {
	var peso = 5
	method precio() = 1
	method peso() = peso
	method gusto() = frutilla
	method esLibreDeGluten() = true
	method recibioMordisco(){
		peso = 0.max(peso - 1)
	}
}
object chupetin {
	var peso = 7
	method precio() = 2
	method peso() = peso
	method gusto() = naranja
	method esLibreDeGluten() = true
	method recibioMordisco(){
		peso = 2.max(peso * 0.9)
	}
}
object chocolatin { 
	var peso
	
	method precio(){
		return 0.50 * peso
	}
	method peso() = peso
	method peso(gramos) {
		peso = gramos
	}
	method gusto() = chocolate
	method esLibreDeGluten() = false
	method recibioMordisco(){
		peso -= 2
	}
}
object golocinaBaniada {
	var property unaGolocina
	
	method precio() {
		return unaGolocina.precio() + 2
	}
	method peso() {
		return unaGolocina.peso() + 4
	}	
	method gusto() = unaGolocina.gusto()
	method esLibreDeGluten() = unaGolocina.esLibreDeGluten()
	method recibioMordisco() {
		
	}
}
object oblea {
	var peso = 250
	method precio() = 5
	method peso() = peso
	method gusto() = vainilla
	method esLibreDeGluten() = false
	method recibioMordisco(){
		if (peso > 70) {return peso * 0.5}
		else {return peso * 0.75}
	}
}




object pastillaTuttiFrutti {
	
}
