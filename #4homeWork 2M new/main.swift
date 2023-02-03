//
//  main.swift
//  #4homeWork 2M new
//
//  Created by Нурлан on 31/1/23.
//

import Foundation

print("Hello, World!")

//Создать класс Пенсионер с параметрами имя, фамилия, текущая сумма пенсии, кол-во лет на пенсии. Создать объекты в main и заполнить данными. Создать класс Соц.Фонд с приватным параметром массив пенсионеров, также публичная функция добавить пенсионера, приватная функция, которая увеличивает пенсию если кол-во лет на пенсии превышает 5 лет на 1000 сом. Эта приватная функция вызывается в другой доступной функции раздать пенсию. Функция раздачи пенсии отображает всех пенсионеров: фио и сумма пенсии.
class Pensioner {
    var name:String
    var surename:String
    var SummaPensii:Int
    var colvoAge:Int
    
    init(name: String, surename: String, SummaPensii: Int, colvoAge: Int) {
        self.name = name
        self.surename = surename
        self.SummaPensii = SummaPensii
        self.colvoAge = colvoAge
    }
}
class SocialFond {
    private var penisoner:[Pensioner] = [Pensioner] ()
    public func addPensioner(add: Pensioner) {
        penisoner.append(add)
        
    }
    private func increasMoney(){
        for i in penisoner {
            print("Пенсионер \(i.name), \(i.surename), сумма пенсии \(i.SummaPensii) доллар, колличество лет на пенсии \(i.colvoAge) лет")
            if i.colvoAge > 5 {
                i.SummaPensii += 1000
            }
        }
    }
    func handOut(){
        increasMoney()
        for i in penisoner{
            print("\(i.name), \(i.surename), \(i.SummaPensii),\(i.colvoAge)")
        }
    }
}


var person1 = Pensioner(name: "Steve", surename: "Jobs", SummaPensii: 1, colvoAge: 100)

var person2 = Pensioner(name:"Atambaev", surename:"Almazbek" , SummaPensii: 100, colvoAge: 5)

var social = SocialFond()

social.addPensioner(add: person1)
social.addPensioner(add: person2)

social.handOut()
