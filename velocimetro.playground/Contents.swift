/*
velocimetro.playground
Author: Alejandro Carrizosa
*/

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 25, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
    
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadString : String){
        var oldVel : Velocidades = .Apagado
        if self.velocidad == .Apagado{
            oldVel = .Apagado
            self.velocidad = .VelocidadBaja
        }else if self.velocidad == .VelocidadBaja{
            oldVel = .VelocidadBaja
            self.velocidad = .VelocidadMedia
        } else if self.velocidad == .VelocidadMedia{
            oldVel = .VelocidadMedia
            self.velocidad = .VelocidadAlta
        } else if self.velocidad == .VelocidadAlta{
            oldVel = .VelocidadAlta
            self.velocidad = .VelocidadMedia
        }
        return(oldVel.rawValue, "Velocidad: \(oldVel)")
    }
}

var auto = Auto()

for index in 1...20{
    print(auto.cambioDeVelocidad())
}
