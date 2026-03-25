object pepita {
  var energia = 100

  method energia() = energia

  method volar(distancia) {
    energia = energia - 10 - distancia/10
  }

  method descansar(){
    energia = energia + 10
  }
  method cansada(){
    return energia < 30
  }
  method comer(alimento){
    energia = energia + alimento.alimentoQueAporta()
  }
}
object alpiste {
method alimentoQueAporta(){
  return 25
}
}
object manzana {
 const base = 20
 var madurez = 1
 method madurar() {
   madurez = (madurez + 1).min(3)
 }
 method podrida(){
  return madurez >= 3
 }
 
 method alimentoQueAporta() {
   if (self.podrida()) {
      return 0
    } else {
      return base * madurez
    }
  }

}