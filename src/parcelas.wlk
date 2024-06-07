class Parcela {
	var property ancho
	var property largo
	var property horasDeSolRecibidas
	const property plantas = []
	
	method superficie() {return ancho * largo}
	method plantasToleradas() {return if(ancho > largo) self.superficie() / 5 else self.superficie() / 3 + largo}
	method tieneComplicaciones() {return plantas.any({planta => planta.horasDeSolToleradas() < self.horasDeSolRecibidas()})}
	method plantar(planta) {if (plantas.size() < self.plantasToleradas()) plantas.add(planta)}
}