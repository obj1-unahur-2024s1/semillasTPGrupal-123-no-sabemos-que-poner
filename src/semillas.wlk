class Planta {
	var property anioObtencion
	var property altura
	
	method horasDeSolToleradas()
	
	method esFuerte() { return self.horasDeSolToleradas() > 10}
	
	method daSemillas() {return self.esFuerte()}
	
	method espacioOcupado()
	
}

class Menta inherits Planta {
	override method horasDeSolToleradas() {return 6}
	override method daSemillas() {return super() or self.altura() > 0.4}
	override method espacioOcupado() {return self.altura() * 3}
}

class Soja inherits Planta {
	override method horasDeSolToleradas() { 
		if(self.altura() < 0.5) {
			return 6
		}
		else if(self.altura().between(0.5, 1)){
			return 7
		}
		else{
			return 9
		}
	}
	override method daSemillas() {return super() or (self.anioObtencion() > 2007 and self.altura() > 1)}
	override method espacioOcupado() {return self.altura() / 2}
}

class Quinoa inherits Planta{
	var property horasDeSolToleradas
	override method daSemillas() {return super() or self.anioObtencion() < 2005}
	override method espacioOcupado(){return 0.5}
}

class SojaTransgenica inherits Soja{
	override method daSemillas(){return false}
}

class Hierbabuena inherits Menta{
	override method espacioOcupado() {return super() * 2}
}


	
	