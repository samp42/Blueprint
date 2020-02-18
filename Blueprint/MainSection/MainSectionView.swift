//
//  MainSectionView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-23.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct MainSectionView: View {
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("LightGradientBlue"),Color("DarkGradientBlue")]), startPoint: .top, endPoint: .bottom)
        }
    }
}

struct MainSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MainSectionView()
    }
}
