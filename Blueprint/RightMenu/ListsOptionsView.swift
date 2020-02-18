//
//  ListsOptionsView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-28.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct ListsOptionsView: View {
    
    let options = ["Pickers List","First Picklist", "Second Picklist", "Blacklist"]
    
    var body: some View {
        VStack{
            
            ForEach(0..<options.count){item in
                Button(action: {
                    
                }){
                    Text(self.options[item])
                        .fontWeight(.semibold)
                    .frame(width: 220, height: 36)
                }.background(Color("RightButtonUnselected")).buttonStyle(optionButtonStyle())
                    
                
                //.background(self.views[item] == ViewSelected.toString(self.global.viewSelected)() ? Color("DarkButtonSelected") : Color("DarkBlue"))
                
                Spacer()
                    .frame(height: 8)
            }
            
        }
    }
}

struct ListsOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        ListsOptionsView()
    }
}
