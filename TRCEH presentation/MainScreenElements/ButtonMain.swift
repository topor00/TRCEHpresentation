//
//  ButtonMain.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 01.02.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//

import SwiftUI
import Grid

struct ButtonMain: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
                    ScrollView(showsHorizontalIndicator: true) {
                        HStack {
                            ForEach(0...10) {_ in
                                GridView()
                            }
                        }
                    }
                    List {
                        ForEach(0...5) {_ in
                            ListView()
                        }
                    }
                    Spacer()
                }
            }
        }

        struct ListView : View {
            var body: some View {
                Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
                .color(.red)
            }
        }

        struct GridView : View {
            var body: some View {
                VStack(alignment: .leading, spacing: 10) {
                    Image("marker")
                        .renderingMode(.original)
                        .cornerRadius(5)
                        .frame(height: 200)
                        .border(Color.red)
                    Text("test")
                }
            }
        }
#if DEBUG
struct ButtonMain_Previews: PreviewProvider {
    static var previews: some View {
        ButtonMain()
    }
}
#endif
