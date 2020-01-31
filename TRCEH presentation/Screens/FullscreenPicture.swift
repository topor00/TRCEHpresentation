//
//  FullscreenPicture.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 31.01.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//

import SwiftUI

struct FullscreenPicture: View {
    var name: String
    var body: some View {
        Image(name).resizable().interpolation(.medium)
    }
}
#if DEBUG
struct FullscreenPicture_Previews: PreviewProvider {
    static var previews: some View {
        FullscreenPicture(name: "brusnika")
    }
}
#endif
