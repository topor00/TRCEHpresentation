//
//  OpenPicture.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 31.01.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//

import Foundation
import SwiftUI

func OpenPictureToSee(){
    UIView.animateWithDuration(transitionDuration(transitionContext), animations: {
      snapshotView.transform = CGAffineTransformMakeScale(1.5, 1.5);
      }, completion: {
        finished -> Void in
             snapshotView.transform = CGAffineTransformMakeScale(1.0, 1.0)
    })
}
