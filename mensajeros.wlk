import destinos.*
import empresa.*



object roberto {

    const destinos = []
    var vehiculoActual = bicicleta
    var peso = 90

    method vehiculoActual() = vehiculoActual
    method cambiarVehiculoA(unVehiculo) {vehiculoActual = unVehiculo}

    method pesoPropio() = peso
    method plata() = 0

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

    method irAlDestino(unDestino) {if(self.puedeLlegarAlDestino(unDestino)) destinos.add(unDestino)}
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
    const destinos = []
    method peso() = 80

    method puedeLlamar() = true 

    method puedeLlegarAlDestino(unDestino) = unDestino.puedePasar(self)
    method puedeEntregarPaqueteAlDestino(unDestino) = self.puedeLlegarAlDestino(unDestino) and paquete.estáPago()

    method irAlDestino(unDestino) {if(self.puedeLlegarAlDestino(unDestino)) destinos.add(unDestino)}

}

// - -------------------------------- NEO -----------------------------------


object neo {
    const destinos = []
    var creditosActuales = true

    method peso() = 0

    method puedeLlamar() = creditosActuales

    method noTieneCreditos(){creditosActuales = false} 
    method ahoraTieneCreditos() {creditosActuales = true}

    method puedeLlegarAlDestino(unDestino) = unDestino.puedePasar(self)
    method puedeEntregarPaqueteAlDestino(unDestino) = self.puedeLlegarAlDestino(unDestino) and paquete.estáPago()

    method irAlDestino(unDestino) {if(self.puedeLlegarAlDestino(unDestino) and !destinos.contains(unDestino)) destinos.add(unDestino)}

    method destinos() = destinos 
}

