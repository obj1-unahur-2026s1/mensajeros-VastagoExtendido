import mensajeros.*
import destinos.*



object mensajeria {
    const mensajeros = []

    method contratarAlMensajero(unMensajero) {mensajeros.add(unMensajero)}
    method despedirAlMensajero(unMensajero) {mensajeros.remove(unMensajero)}
    method despedirATodosLosMensajeros() {mensajeros.removeAll(mensajeros)}

    method laMensajeriaEsGrande() = mensajeros.size() > 2

    method puedeSerEntregadoPorElPrimerMensajeroConDestinoA(unDestino) = mensajeros.first().puedeEntregarPaqueteAlDestino(unDestino)

    method elPesoDelUltimoMensajero() = mensajeros.last().peso()

}