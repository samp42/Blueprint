//
//  MainSectionView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-23.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct MainSectionView: View {
    
    /*extension Color{
        static let lightGradientBlue = Color.LightGradientBlue
        static let darkGradientBlue = Color.DarkGradientBlue
    }*/
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("LightGradientBlue"),Color("DarkGradientBlue")]), startPoint: .top, endPoint: .bottom)
            Text("No event selected.")
        }
    }
}

struct MainSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MainSectionView()
    }
}
