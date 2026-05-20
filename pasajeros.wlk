object roberto {

    var vehiculoActual = bicicleta
    var peso = 0
    var plata = 0

    method vehiculoActual() = vehiculoActual
    method cambiarVehiculoA(unVehiculo) {vehiculoActual = unVehiculo}

    method pesoPropio() = peso

    method elPesoTotalConElVehiculo(unVehiculo){ // unVehiculo == bicicleta
        if(self.tieneBicicleta()) { 
            return self.pesoPropio() + unVehiculo.pesoVehiculo()
        } else{ 
            return self.pesoPropio() + unVehiculo.pesoVehiculo() 
        }
    }

    method tieneBicicleta(){
        return vehiculoActual == self.vehiculoActual()
    }
    
    method plata() = plata

    method tieneCubiertas() = true
    method puedeLlamarA(unaPersona) {false}  
}

object bicicleta {
    method pesoVehiculo() = 5
}

object camion {
    const acoplados = []

    method agregarElCoplado(unCoplado) {acoplados.add(unCoplado)}
    method quitarElAcoplado(unAcoplado) {acoplados.remove(unAcoplado)}

    method pesoVehiculo() = 500 * acoplados.size()
}

// - -------------------------------- CHUCK NORRIS -----------------------------------


object chuck {
    method peso() = 80

    method puedeLlamarA(unaPersona) = true 
}

// - -------------------------------- NEO -----------------------------------


object neo {
    var creditosActuales = true

    method peso() = 0

    method puedeLlamarA(unaPersona) = creditosActuales

    method noTieneCreditos(){creditosActuales = false} 
    method ahoraTieneCreditos() {creditosActuales = true}

}
