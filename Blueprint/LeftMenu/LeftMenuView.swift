//
//  LeftMenuView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-23.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct LeftMenuView: View {
    @State public var viewSelected = 0

    var body: some View {
            
        VStack{
             TabView(selection: $viewSelected) {
                ScoreBoardView()
                    .tabItem {
                        Text("Score Board")
                                       
                }.tag(0)
                                   
                TeamsView()
                    .tabItem {
                        Text("Teams")
                                       
                 }.tag(1)
                                   
                 Text("display lists")
                    .tabItem {
                        Text("Lists")
                                       
                 }.tag(0)
                               
             }
             .padding()
            
        }.padding(.horizontal, 20)
    }
}

struct LeftMenuView_Previews: PreviewProvider {
    static var previews: some View {
        LeftMenuView()
    }
}
