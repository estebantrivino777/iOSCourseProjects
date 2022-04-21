import UIKit

enum ErrorType {
    case    LoginError,
            RequestError
}

protocol Vehicle {
    func powerOn()
    func run()
}

class Car: Vehicle {
    
    var color: String
    var horsePower: Double
    
    init(color: String, horsePower: Double) {
        self.color = color
        self.horsePower = horsePower
    }
    
    func powerOn() {
        print("Rummm")
    }
    
    func run() {
        print("Rumm ruumm rumm")
    }
}

class ChevroletCar: Car {
    
    private func validateSystems() -> Bool {
        //Valida todos los sistemas del carro
        return true
    }
    
    override func powerOn() {
        if validateSystems() {
            print("ZZZZZZRummmmmmmm")
        } else {
            print("Error")
        }
    }
}

class Mazda2: Car {
    override func powerOn() {
        print("PHSSSSSSSS RUMMMMMM")
    }
}

class ChineeseCar: Car {
    
}

let myChevrolet = ChevroletCar(color: "red", horsePower: 177.7)
let myMazda2 = Mazda2(color: "green", horsePower: 2000.0)

var myCar: Car
myCar = Car(color: "red", horsePower: 177.7)

myCar.powerOn()
