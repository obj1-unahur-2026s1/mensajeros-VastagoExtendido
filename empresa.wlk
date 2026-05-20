import mensajeros.*
import destinos.*



object mensajeria {
    const mensajeros = []
    const destinos = [matrix, puenteMoron]

    var presupuesto = 500
    method destinos() = destinos

    method contratarAlMensajero(unMensajero) {mensajeros.add(unMensajero)}
    method despedirAlMensajero(unMensajero) {mensajeros.remove(unMensajero)}
    method despedirATodosLosMensajeros() {mensajeros.removeAll(mensajeros)}

    method laMensajeriaEsGrande() = mensajeros.size() > 2

    method puedeSerEntregadoPorElPrimerMensajeroConDestinoA(unDestino) = mensajeros.first().puedeEntregarPaqueteAlDestino(unDestino)

    method elPesoDelUltimoMensajero() = mensajeros.last().peso()

    method comprarUnPaquete() {
        paquete.comprarPaquete()
    } // LA COMPRA DEL PAQUETE LO HAGO POR MENSAJERIA, NO LO HACE EL MENSAJERO

    method elMensajeroRecorrioTodosLosDestinos(unMensajero) = unMensajero.destinos().size() == 2

}

// --------------------------------------- PAQUETES ----------------------------------------------------------

object paquete{
    var estáPagado = false

    method precio() = 50 
    method estáPago() = estáPagado // modicicaar

    method comprarPaquete() {estáPagado = true} 
    method reiniciarPago() {estáPagado = false} 

}

object paquetito{
    method precio() = 0 
    method estáPago() = true
}

object paqueton {

    var precioAPagar =  100 * mensajeria.destinos().size()

    method precio() = precioAPagar

// consultar el precio antes de seguir pagando, sino el numero que retorna seria un entero negativo.
    method pagarParcialmentePaquetonPor(unPrecio) { precioAPagar -= unPrecio}

    method estáPago() =  precioAPagar == 0
}