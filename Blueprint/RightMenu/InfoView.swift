//
//  InfoView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-19.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

/*extension Color {
    static let lightGray = Color("LightGray")
}*/

struct InfoView: View {
    
    let contentView = ContentView()
    var body: some View {
        
            HStack{
                //Image("\(teamLogo)")
                VStack(alignment: .leading){
                    Text("\(contentView.teamSelected!)")
                        .fontWeight(.heavy)
                    
                    Text("Infinite Recharge: 2020")
                        .font(.body)
                    
                    Text("© Blueprint, 2020")
                        .font(.caption)
                }
                
            }.frame(width: 240, height: 120, alignment: .center)
                .background(Color("LightGray"))
                .foregroundColor(Color("DarkBlue"))
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
