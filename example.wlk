/*
Posibles objetos

paquete
destino
mensajero

puedeEntregar
*/

//Mensajeros
object roberto {
  var vehiculo = bicicleta
  var peso = 80

  method cambiarVehiculo(unVehiculo) {vehiculo = unVehiculo}
  method peso(unPeso) {peso = unPeso}
  method peso() =  peso + vehiculo.peso()
  method puedeEntregar(unPaquete) = unPaquete.estaPago()
  method puedeLlamar() = false
}

object chuckNorris {
  method peso() = 80
  method puedeLlamar() = true
}

object neo {
  var tieneCredito = true

  method cargarCredito() {tieneCredito = true}
  method gastarCredito() {tieneCredito = false} 
  method peso() = 0
  method puedeLlamar() = tieneCredito
  method puedeEntregar(unPaquete) = unPaquete.estaPago()

}

//Vehiculos
object bicicleta {
  method peso() = 5  
}

object camion {
  var cantidadAcoplados = 4

  method agregarAcoplados(cantidad) { cantidadAcoplados = cantidad }
  method peso() = cantidadAcoplados * 500
}

object paquete {
  const estaPago = false

  method estaPago() = estaPago
}

object puenteBrooklyn {
  method puedePasar(unMensajero) = unMensajero.peso() <= 1000
}

object matrix {
  method puedePasar(unMensajero) = unMensajero.puedeLlamar()
}