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
                        .font(.headline)
                    
                    Text("Infinite Recharge: 2020")
                        .font(.body)
                    
                    Text("© Blueprint, 2020")
                        .font(.caption)
                }
                
            }.frame(width: 220, height: 80, alignment: .center)
                .background(Color("LightGray"))
                .foregroundColor(Color.black)
        .cornerRadius(20)
        .padding(10)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
