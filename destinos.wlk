object matrix{

    method puedeDejarPasarA(unMensajero){
        if (unMensajero.peso() < 1000) self.dejarPasar()
    }
    method dejarPasar() {}
}

object puenteMoron{

    method puedeDejarPasarA(unMensajero){
        if (unMensajero.puedeHacerLlamada()) self.dejarPasar()
    }

    method dejarPasar() {}
}


