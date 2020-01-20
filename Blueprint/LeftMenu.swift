//
//  LeftMenu.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-19.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct LeftMenu: View {
    //@State var menuIsClicked: Bool = false
    
    var body: some View {
        
        VStack{
            Color.blue
            MenuButton(label: Text("Event")) {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Sherbrooke")
                }
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Montreal")
                }
            }
            Text("hello")
        }.frame(width: 360, height: .infinity).background(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
    }//.accentColor(.red)
}

struct LeftMenu_Previews: PreviewProvider {
    static var previews: some View {
        LeftMenu()
    }
}
