//
//  AnswerQuestion.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 31.01.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//

import SwiftUI

struct AnswerQuestion: View {
    var answers1: [Answers] = answerData
    var body: some View {
        NavigationView{
        List (answers1) { ans in
            NavigationLink(destination: AnswerDetails(question: ans.question, answer: ans.answer)){
                VStack(alignment: .leading){
                    Text(ans.question).font(.headline)
                    Text(ans.answer).font(.subheadline).lineLimit(4).foregroundColor(Color.gray)
                }}
            }.navigationBarTitle(Text("Вопрос-ответ"))}}
}
#if DEBUG
struct AnswerQuestion_Previews: PreviewProvider {
    static var previews: some View {
        AnswerQuestion(answers1: answerData)
    }
}
#endif
