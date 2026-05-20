import destinos.*


object roberto {

    var vehiculoActual = bicicleta
    var peso = 90
    var plata = 0

    method vehiculoActual() = vehiculoActual
    method cambiarVehiculoA(unVehiculo) {vehiculoActual = unVehiculo}

    method pesoPropio() = peso
    method plata() = plata

    method peso(){ // unVehiculo == bicicleta
        if(self.viajaEnBici()) { 
            return self.pesoPropio() + vehiculoActual.peso()
        } else{ 
            return self.pesoPropio() + vehiculoActual.peso() 
        }
    }

    method viajaEnBici(){return vehiculoActual == self.vehiculoActual()}
    method tieneCubiertas() = true
    method puedeLlamar() = false

    method puedeLlegarAlDestino(unDestino) = unDestino.puedePasar(self)
    method puedeEntregarPaqueteAlDestino(unDestino) = self.puedeLlegarAlDestino(unDestino) and paquete.estáPago()

    method entregarPaquete() {
      // A COMPLETAR
    }
}

object bicicleta {
    method peso() = 5
}

object camion {
    const acoplados = []

    method agregarElCoplado(unCoplado) {acoplados.add(unCoplado)}
    method quitarElAcoplado(unAcoplado) {acoplados.remove(unAcoplado)}

    method peso() = 500 * acoplados.size()
}

// - -------------------------------- CHUCK NORRIS -----------------------------------


object chuck {
    method peso() = 80

    method puedeLlamar() = true 
    
    method puedeLlegarAlDestino(unDestino) = unDestino.puedePasar(self)
    method puedeEntregarPaqueteAlDestino(unDestino) = self.puedeLlegarAlDestino(unDestino) and paquete.estáPago()
}

// - -------------------------------- NEO -----------------------------------


object neo {
    var creditosActuales = true

    method peso() = 0

    method puedeLlamar() = creditosActuales

    method noTieneCreditos(){creditosActuales = false} 
    method ahoraTieneCreditos() {creditosActuales = true}

    method puedeLlegarAlDestino(unDestino) = unDestino.puedePasar(self)
    method puedeEntregarPaqueteAlDestino(unDestino) = self.puedeLlegarAlDestino(unDestino) and paquete.estáPago()

}

// ------------------------- PAQUETE ----------------------------------------------------------

object paquete{
    method estáPago() = true // modicicaar
}