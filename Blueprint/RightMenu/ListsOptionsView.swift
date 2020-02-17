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
            Button(action: {
                
            }){
                Text("1st Robot Picklist")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
            
            Button(action: {
                
            }){
                Text("2nd Robot Picklist")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
            
            Button(action: {
                
            }){
                Text("Blacklist")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
        }
    }
}

struct ListsOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        ListsOptionsView()
    }
}
