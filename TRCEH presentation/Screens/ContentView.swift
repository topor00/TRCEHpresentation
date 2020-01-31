//
//  ContentView.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 30.01.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var pages = newData
@State private var isAnswerPressed = false
@State private var isFeedbackPressed = false
@State private var isAboutCompanyPressed = false
    
    var body: some View {
        
        ScrollView{
            
            
         VStack {
            MapView().frame(height: 300).border(/*@START_MENU_TOKEN@*/Color("Cyan")/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/)
            
            Button(action: {print("нажат логотип - переход на сайт")
                GoToSite()
            }) {
                Image("main_logo").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                .clipShape(Circle())
                .shadow(radius: 30)
                .frame(height: nil)
                .offset(y:-100)
                .padding(.bottom, -110)
                
            }}
            
            VStack {
                Text("Наружная и интерьерная реклама в Тюмени!")
                    .font(.title)
                    .fontWeight(.bold)
                .foregroundColor(Color.red)
                    .multilineTextAlignment(.center)
                    .lineLimit(100)
                Text("г. Тюмень, ул. Осипенко, 81 офисы 3/18, 3/16, 3/14")
                    .multilineTextAlignment(.center)
                    .lineLimit(100)
                    .frame(width: 200)
                Button(action: {print("кнопка телефонного вызова нажата")
                    CallNumber(phoneNumber: "73452918272")
                }) {
                    Text("+7 (3452) 91-81-72")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                }
                
            }.padding(.bottom, 5.0)
            
            
                VStack {
                    Button(action: {self.isAnswerPressed.toggle()}) {
                            Text("Вопрос-ответ")
                        .frame(minWidth: 200, maxWidth: .infinity)
                        .font(.title)
                        .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color("MainColor"), Color("Cyan")]), startPoint: .leading, endPoint: .trailing))
                        .foregroundColor(Color.white)
                        .cornerRadius(40)
                        .shadow(radius: 10)
            }.padding([.leading, .bottom, .trailing]).sheet(isPresented: self.$isAnswerPressed , content: {AnswerQuestion()})
                    
                    Button(action: {self.isFeedbackPressed.toggle()}) {
                            Text("Отзывы")
                                .frame(minWidth: 200, maxWidth: .infinity)
                                .font(.title)
                                .padding()
                        .background(LinearGradient(gradient: Gradient(colors: [Color("MainColor"), Color("Cyan")]), startPoint: .leading, endPoint: .trailing))
                                .foregroundColor(Color.white)
                                .cornerRadius(40)
                                .shadow(radius: 10)
                    }.padding([.leading, .bottom, .trailing]).sheet(isPresented: self.$isFeedbackPressed, content: {Feedback()})
                    
                    Button(action: {self.isAboutCompanyPressed.toggle()}) {
                                               Text("О компании")
                                                   .frame(minWidth: 200, maxWidth: .infinity)
                                                   .font(.title)
                                                   .padding()
                                           .background(LinearGradient(gradient: Gradient(colors: [Color("MainColor"), Color("Cyan")]), startPoint: .leading, endPoint: .trailing))
                                                   .foregroundColor(Color.white)
                                                   .cornerRadius(40)
                                                   .shadow(radius: 10)
                                       }.padding([.leading, .bottom, .trailing]).sheet(isPresented: self.$isAboutCompanyPressed, content: {AboutCompany()})
               
        }
    }
            }}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pages: newData)
    }
}
#endif
