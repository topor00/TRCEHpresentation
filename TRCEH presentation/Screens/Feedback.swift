//
//  Feedback.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 31.01.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//

import SwiftUI

struct Feedback: View {
    var feedText: [FeedbackStruct] = dataFeedback
    var body: some View {
        NavigationView{
        List (feedText) { feed in
            VStack{
            NavigationLink(destination: FullscreenPicture(name: feed.imageCustomer)){ Image(feed.imageCustomer).resizable().frame(width: 60.0, height: 80)
                Text(feed.customer).font(.headline).padding(.bottom)
            }
            VStack(alignment: .leading){
                
                Text(feed.feed)
                }}}.navigationBarTitle(Text("Отзывы клиентов"))
        }}
}
#if DEBUG
struct Feedback_Previews: PreviewProvider {
    static var previews: some View {
        Feedback(feedText: dataFeedback)
    }
}
#endif
