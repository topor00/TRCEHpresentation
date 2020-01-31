//
//  Pages.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 31.01.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//


import SwiftUI

struct Pages: Identifiable {
    var id = UUID()
    var title: String
    
}

#if DEBUG
let newData = [
Pages(title: "Портфолио"),
Pages(title: "Вопрос-ответ"),
Pages(title: "Отзывы"),
Pages(title: "О компании")
]
#endif

