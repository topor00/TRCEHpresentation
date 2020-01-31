//
//  AnswerDetails.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 31.01.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//

import SwiftUI

struct AnswerDetails: View {
    var question: String
    var answer: String
    var body: some View {
        ScrollView{
        VStack{
            Text(question).font(.title).multilineTextAlignment(.center).padding()
            Text(answer).font(.headline).lineLimit(500)
        }
        }}
}
#if DEBUG
struct AnswerDetails_Previews: PreviewProvider {
    static var previews: some View {
        AnswerDetails(question: "Вопрос", answer: "Ответ")
    }
}
#endif
