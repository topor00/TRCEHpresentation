//
//  CallNumber.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 30.01.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//

import Foundation
import UIKit

 func CallNumber(phoneNumber:String) {

    if let phoneCallURL = URL(string: "tel://\(phoneNumber)"), UIApplication.shared.canOpenURL(phoneCallURL)
    {
        UIApplication.shared.open(phoneCallURL, options: [:], completionHandler: nil)
    }
    }
func GoToSite () {

if let phoneCallURL = URL(string: "https://trceh.ru"), UIApplication.shared.canOpenURL(phoneCallURL)
{
    UIApplication.shared.open(phoneCallURL, options: [:], completionHandler: nil)
}
}

