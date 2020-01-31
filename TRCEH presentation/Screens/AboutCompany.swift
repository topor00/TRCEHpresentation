//
//  AboutCompany.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 31.01.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//

import SwiftUI

struct AboutCompany: View {
    var body: some View {
        
        ScrollView{
            VStack {
            Button(action: {print("нажат логотип - переход на сайт")
                GoToSite()
            }) {
                Image("main_logo").renderingMode(Image.TemplateRenderingMode?.init(Image.TemplateRenderingMode.original))
                .clipShape(Circle())
                .shadow(radius: 30)
               
                
            }
        Text("РПК «Тюменский рекламный цех» – это в первую очередь команда единомышленников, увлеченных своим делом и обладающих нужным опытом и знаниями.\n\n Основной вид деятельности компании – изготовление наружной и интерьерной рекламы. Данным видом рекламного обеспечения мы занимаемся с 2009 г. и с каждым годом стараемся стать лучше и интереснее. На 2016 год количество выполненных проектов исчисляется тысячами. В 2014 году наша компания стала лауреатом Международного конкурса наружной рекламы «ЗНАК» в номинации «Нетрадиционные средства и медиа в ООН».\n\n Цель нашей компании – производство красивой и качественной рекламы, которая повышает продажи и имидж нашим клиентам. Особое внимание мы уделяем контролю качества изготовления наших рекламных вывесок и другой продукции. Уверены в том, что наш клиент должен быть доволен сотрудничеством с нами, а мы должны гордиться своей компанией.\n\n Перечень оказываемых услуг: вывески, световые короба, объемные буквы, интерьерная реклама, таблички, POS-материалы, домовые указатели, дизайн, интерьерная печать.")
                
        }}
    }}

#if DEBUG
struct AboutCompany_Previews: PreviewProvider {
    static var previews: some View {
        AboutCompany()
    }
}

#endif