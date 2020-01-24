//
//  LeftMenuView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-23.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct LeftMenuView: View {
    //@State var menuIsClicked: Bool = false
    
    var body: some View {
            
        VStack{
            Button(action: {}){
                Text("Score Board")
                    .font(.headline)
                    .frame(width: 200)
            }.frame(height: 50.0)
                .cornerRadius(25)
            
            Button(action: {}){
                Text("Teams")
                    .font(.headline)
                .frame(width: 200)
            }.padding(.top, 10.0).frame(height: 50.0)
            
            Button(action: {}){
                Text("Lists")
                    .font(.headline)
                .frame(width: 200)
            }.padding(.top, 10.0).frame(height: 50.0)
        }.padding(.horizontal, 20)
        
    }
}

struct LeftMenuView_Previews: PreviewProvider {
    static var previews: some View {
        LeftMenuView()
    }
}
