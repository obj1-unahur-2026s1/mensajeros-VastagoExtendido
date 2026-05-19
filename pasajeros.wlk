object roberto {

    var vehiculoActual = bicicleta

    method vehiculoActual() = vehiculoActual
    method cambiarVehiculoA(unVehiculo) {vehiculoActual = unVehiculo}

    method pesoPropio() = 1

    method elPesoTotalConElVehiculo(unVehiculo){ // unVehiculo == bicicleta
        if(self.tieneBicicleta()) { 
            self.pesoPropio() + unVehiculo.pesoPropio()
        } else{ 
            self.pesoPropio() + unVehiculo.pesoVehiculo() 
        }
    }

    method tieneBicicleta(){
        return vehiculoActual == self.vehiculoActual()
    } 
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

object pepe {

}