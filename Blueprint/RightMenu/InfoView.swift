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
                VStack{
                Text("\(contentView.teamSelected!)")
                    
                    Text("Infinite Recharge: 2020")
                        .font(.body)
                        .fontWeight(.heavy)
                }
            }.frame(width: 240, height: 180, alignment: .center)
                //.background(.fill(.lightGray))
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
