//
//  LeftMenuView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-23.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct LeftMenuView: View {
    @State var viewSelected: String = "Score Board"
    @State var scoreBoardToggled: Bool = true
    @State var teamsToggled: Bool = false
    @State var listsToggled: Bool = false
    
    var body: some View {
            
        VStack{
            
                Button(action: {
                    self.viewSelected = "Score Board"
                    
                }){
                    Text("Score Board")
                        .frame(width: 200.0, height: 40.0)
                }.buttonStyle(leftMenuButtonStyleClicked())
                
                Spacer()
                    .frame(height: 10.0)
                
                Button(action: {
                    self.viewSelected = "Teams"

                }){
                    Text("Teams")
                        .frame(width: 200.0, height: 40.0)
                }.buttonStyle(leftMenuButtonStyle())
                
                Spacer()
                    .frame(height: 10.0)
                
                Button(action: {
                    self.viewSelected = "Lists"
                   
                }){
                    Text("Lists")
                        .frame(width: 200.0, height: 40.0)
                }.buttonStyle(leftMenuButtonStyle())
        }.padding(.horizontal, 20)
    }
}

struct LeftMenuView_Previews: PreviewProvider {
    static var previews: some View {
        LeftMenuView()
    }
}
