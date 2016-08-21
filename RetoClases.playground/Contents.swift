//: Mini Reto # 2 Clases y Enumeraciones
// Mario Fernando Reyes Ojeda
// Agosto 21 de 2016

import UIKit

enum Velocidades :Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
        
    }
    
    func velocidadCadena() -> String{
        let velocidad :String?
        switch self{
        case .Apagado:
            velocidad = "Apagado"
        case .VelocidadBaja:
            velocidad = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = "Velocidad Alta"
        }
        
        return velocidad!
    }
}

class Auto{
    var velocidad :Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInicial: Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() ->(actual:Int, velocidadEnCadena:String){
        
        let velocidad :Int = self.velocidad.rawValue
        let etiqueta :String = self.velocidad.velocidadCadena()
        
        switch self.velocidad{
        case .Apagado:
            self.velocidad = .VelocidadBaja
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
        }
        
        return (velocidad, etiqueta)
    }
}

 // Prueba

var auto = Auto()

for i in 1...20{
    let (actual, velocidadEnCadena) = auto.cambioDeVelocidad()
    print("\(actual)km por hora, \(velocidadEnCadena)")
    
}
