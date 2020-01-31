//
//  Portfolio.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 31.01.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//

import SwiftUI

struct Portfolio: View {
    var portfolPic: [PortfolioPictureList] = dataPortfolioPictures
    var body: some View {
        NavigationView{
            
        List (portfolPic) { photo in
            
                NavigationLink(destination: FullscreenPicture(name: photo.name)){ Image(photo.name).resizable().frame(width: 60.0, height: 80)
                
            
             }}.navigationBarTitle(Text("Портфолио"))}
        
        }
        }
        
    

#if DEBUG
struct Portfolio_Previews: PreviewProvider {
    static var previews: some View {
        Portfolio()
    }
}
#endif
