//
//  ВЫЧИСЛЕНИЕ ФУНКЦИИ f(n)=2*n НА МАШИНЕ ТЬЮРИНГА
//
//  main.swift
//  Turing Machine
//
//  Created by Андрей Зорькин on 02.11.16.
//  Copyright © 2016 Андрей Зорькин. All rights reserved.
//

import Foundation

let M = Machine(registors: 10)

M.write(number: 3)

M.f()

print(M.currentNumber())
