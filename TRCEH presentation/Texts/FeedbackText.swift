//
//  FeedbackText.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 31.01.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//


import SwiftUI

struct FeedbackStruct: Identifiable {
    var id = UUID()
    var customer: String
    var feed: String
    
    var imageCustomer: String
}

#if DEBUG
let dataFeedback = [
FeedbackStruct(customer: """
Партнер-Строй (ЖК Ожогино, ЖК “Апрель”)
""", feed: """
Благодарственным письмом награждается “Тюменский рекламный цех” за безупречное выполнение задач, качественную работу, дружелюбное отношение и любовь к домам не выше сосен!
Генеральный директор
АО “Партнер-Строй”
Разницын Г.Ю.
""", imageCustomer: "partnerStroy"),
FeedbackStruct(customer: """
Брусника
""", feed: """
Уважаемая Дарья Александровна!
Выражаю благодарность компании “Тюменский рекламный цех” за компетентность, добросовестность, продуктивность.
Одним из условий успешной работы является взаимодействие с надежными партнерами. Благодаря своему профессионализму
и стремлению к высоким результатам, Вы помогаете нам решать сложные задачи и, рука об руку, развиваясь и совершенствуясь, достигать поставленных целей! Желаем вашей команде процветания и надеемся на дальнейшее результативное сотрудничество.
С уважением,
исполнительный директор
компании “Брусника. Тюмень”
А.С. Щиголь

""", imageCustomer: "brusnika"),
FeedbackStruct(customer: """
Эковата
""", feed: """
Выражаем благодарность РПК “Тюменский рекламный цех” за взаимное сотрудничество и добропорядочные партнерские отношения, проявленные при создании стенда для выставки “Строительство и Архитектура 2014”. Надеемся и в будущем на Вашу надежность и высокую репутацию.
Генеральный директор
ООО “Фирма Тюмень Эковата”
Телесов А.А.
""", imageCustomer: "ecovata"),
FeedbackStruct(customer: """
Аграрная политика
""", feed: """
С компанией “Тюменский рекламный цех” мы плодотворно сотрудничаем несколько лет. Профессиональный, ответственный коллектив. Мы очень довольны качеством работ, сроками и ценами. Ребята постоянно развиваются, не стоят на месте, двигаются вперед, много учатся. Желаю нашим добрым партнерам оставаться такими же целеустремленными и активными.
С уважением,
Главный редактор
Новоселов С.А.
""", imageCustomer: "agrarnayaPolitica"),
FeedbackStruct(customer: """
Спортивный клуб «Анкор»
""", feed: """
Выражаем нашу искреннюю благодарность сотрудникам РПК «Тюменский рекламный цех» и лично Кухтериной Дарье Александровне за оперативную и высокопрофессиональную работу при разработке логотипа, по изготовлению и монтажу вывески над главным входом, наружной рекламы и информационных стендов спортивного клуба «Анкор».
Установка новой вывески во многом определила новый современный облик нашего спортивного клуба. Спасибо за клиентов, которые пришли благодаря Вам.
Мы верим в сохранение сложившихся деловых и дружеских отношений, надеемся на дальнейшее взаимовыгодное сотрудничество. Желаем Вам успешного развития и достижения новых вершин в бизнесе.
С Уважением,
Генеральный директор ООО «Анкор» А.А. Урусов
""", imageCustomer: "sportClubAncor"),
FeedbackStruct(customer: """
ООО «Пресс центр»
""", feed: """
Компания ООО «ПРЕСС ЦЕНТР» выражает благодарность сотрудникам компании РПК «Тюменский рекламный цех» за предоставление качественных услуг в области наружной рекламы.
Надеемся на дальнейшее сотрудничество, Желаем Вам успешной работы и реализации Ваших планов!
Исполнительный директор
ООО «ПРЕСС ЦЕНТР» Сураев А.В.
""", imageCustomer: "pressCentr"),
FeedbackStruct(customer: """
ООО «НПО «Северная археология – 1»
""", feed: """
Компания ООО «НПО «Северная археология -1» выражает благодарность сотрудникам компании «Тюменский рекламный цех» за высокое качество, профессионализм в работе и оперативность в исполнении заказа по изготовлению входной вывески на здание.
Надеемся на дальнейшее и плодотворное сотрудничество!
Директор ООО НПО
«Северная археология -1» Г.П. Визгалов к.и.н.
""", imageCustomer: "SevernayaArcheologia"),
FeedbackStruct(customer: """
ООО «Вывески.ру»
""", feed: """
Уважаемые коллеги!
Выражаем Вам нашу искреннюю и глубокую признательность за оперативное и плодотворное сотрудничество.
Мы хорошо осознаем, что своими успехами обязаны, прежде всего, компаниям подрядчикам, представляющих нас в регионе, и, в частности, успешному сотрудничеству с Вами.
Выражаем надежду на продолжение успешного сотрудничества на благо наших общих интересов, а также на дальнейшее увеличение достигнутых показателей совместной работы.
Желаем Вам и Вашей Компании успехов и процветания!
Зам. Директора
ООО «Вывески.ру» Моисеева Ю.В.
""", imageCustomer: "viveskiRu"),
]
#endif
