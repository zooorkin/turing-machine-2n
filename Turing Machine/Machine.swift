//
//  Machine.swift
//  Turing Machine
//
//  Created by Андрей Зорькин on 02.11.16.
//  Copyright © 2016 Андрей Зорькин. All rights reserved.
//

import Foundation

//
let left = -1
let right = 1
let none = 0

// Состояние машины Тьюринга
enum State{
    case q0
    case q1
    case q2
    case q3
    case q4
    case q5
    case q6
    case q7
    case terminal
}

// Машина Тьюринга
class Machine{
    // Текущее состояние
    var state: State
    // Текущая клетка на ленте
    var currentCell = 1
    // Лента
    var lenta: [Character]
    //
    var i: Int
    
    var slovo: Character{
        return self.lenta[currentCell]
    }
    // Инициализация ленты
    init(registors: Int){
        print("     Turing machine".uppercased())
        i = 0
        self.state = .q0
        self.currentCell = 1
        lenta = [Character]()
        for _ in 1...registors{
            self.lenta += ["_"]
        }
        g()
    }
    // Пишет на ленте заданное число
    func write(number: Int){
        for i in 1...number + 1{
            self.lenta[i] = "1"
        }
    }
    
    // Возвращает число, написанное на ленте
    func currentNumber() -> Int {
        var i = 0
        for each in self.lenta{
            if each == "1"{
                i += 1
            }
        }
        return i - 1
    }
    
    func g(){
        let probel: String
         if i >= 10, i < 100{
            probel = " "
         }else if i < 10{
            probel = "  "
        }else{
            probel = ""
        }
        
        var header = "    ┌─"
        for _ in 0..<lenta.count{
            header += "──"
        }
        header += "─"//"┐"
        print(header)

        var s = "\(probel)\(i) │ "
        i += 1
        for each in lenta{
            s.append(each)
            s.append(" ")
        }
        
        var stroka = "    └─"
        for _ in 0..<currentCell{
            stroka += "──"
        }
        stroka += "┬"
        for _ in 0..<lenta.count - currentCell - 1{
            stroka += "──"
        }
        stroka += "──" //"─┘"
        
        
        print(s)
        print(stroka)
        print()
    }
    
    func toState(_ state: State, _ slovo: Character, _ cell: Int){
        self.state = state
        self.lenta[currentCell] = slovo
        self.currentCell += cell
    }
    
    func f(){
        g()
        while self.state != .terminal{
            switch self.state {
            case .q0:
                switch slovo {
                case "_": toState(.terminal, "_", none)
                case "1": toState(.q1, "1", left)
                default: print("Error")
                }
            case .q1:
                switch slovo {
                case "_": toState(.q2, "☺", right)
                case "1": toState(.terminal, "1", none)
                default: print("Error")
                }
            case .q2: // Ищем 0 после 111111 и ставим 3
                switch slovo{
                case "1": toState(.q2, "1", right)
                case "_": toState(.q3, "_", left)
                default: print("Error")
                }
            case .q3:
                switch slovo{
                case "1": toState(.q4, "3", left)
                default: print("Error")
                }
            case .q4: // Движемся влево для поиска свободной еденицы
                switch slovo{
                case "1": toState(.q5, "2", right)
                case "2": toState(.q4, "2", left)
                case "3": toState(.q4, "3", left)
                case "☺": toState(.q6, "_", right) ///Записали все еденицы справа
                default: print("Error")
                }
            case .q5: // Движемся для отметки "2" во второй половине (после 3)
                switch slovo{
                case "1": toState(.q5, "1", right)
                case "3": toState(.q5, "3", right)
                case "2": toState(.q5, "2", right)
                case "_": toState(.q4, "2", left)
                default: print("Error")
                }
            case .q6:
                switch slovo{
                case "2","3": toState(.q6, "1", right)
                case "_": toState(.q7, "_", left)
                default: print("Error")
                }
            case .q7:
                switch slovo{
                case "1": toState(.q7, "1", left)
                case "_": toState(.terminal, "_", right)
                default: print("Error")
                }
            default:
                print("Error")
            }
            g()
        }
        print("     terminal".uppercased())
    }
}
