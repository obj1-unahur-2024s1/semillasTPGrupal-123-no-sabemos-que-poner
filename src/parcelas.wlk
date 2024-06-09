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

class ParcelaEcologica inherits Parcela {
	
	method seAsociaBien(planta) = not self.tieneComplicaciones() and planta.esParcelaIdeal(self)
}

class ParcelaIndustrial inherits Parcela {
	
	method seAsociaBien(planta) = planta.esFuerte() and plantas.size() <= 2
}

object inta {
	const parcelas = []
	
	method agregarParcela(parcela) = parcelas.add(parcela)
	
	method promedioDePlantas() = parcelas.sum({parcela => parcela.size()}) / parcelas.size()
	
	method parcelaMasSustentable() {}
	
}