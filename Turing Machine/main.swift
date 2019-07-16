//
//  ВЫЧИСЛЕНИЕ ФУНКЦИИ f(n)=2*n НА МАШИНЕ ТЬЮРИНГА
//
//  main.swift
//  Turing Machine
//
//  Created by Андрей Зорькин on 02.11.16.
//  Copyright © 2016 Андрей Зорькин. All rights reserved.
//

let machine = Machine(registors: 10)

machine.write(number: 3)
machine.calculate()

print(machine.currentNumber())
