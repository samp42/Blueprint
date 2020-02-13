//
//  LeftMenuView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-23.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

/*class ViewDisplayed: ObservableObject {
    
   //@Published var didChange = PassthroughSubject<Void, Never>()
    
    var viewSelected = ViewSelected.ScoreBoard { didSet { didChange.send()}}
}*/

struct LeftMenuView: View {
    //@ObservedObject var currentView = ViewDisplayed()
    
    @EnvironmentObject var global: GlobalEnvironment
    let Buttons = [ViewSelected.ScoreBoard, ViewSelected.Teams, ViewSelected.Lists]

    var body: some View {
            
        VStack{
            EventSelectorView()
            
            GeometryReader{ geometry in
                Button(action: {
                    self.global.viewSelected =  ViewSelected.ScoreBoard
                }){
                    HStack{
                        Image("doc.on.clipboard.fill")
                        Text("Score Board")
                    }
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    }.buttonStyle(leftMenuButtonStyle())
                .frame(width: geometry.size.width, height: geometry.size.height)
                    
            }.frame(width: 180, height: 40)
            
            Spacer()
                .frame(height: 10)
                
            Button(action: {
                self.global.viewSelected =  ViewSelected.Ranking
                
            }){
                HStack{
                    Image("tray.full.fill")
                    Text("Ranking")
                }
        
            }.buttonStyle(leftMenuButtonStyle())

                Spacer()
                    .frame(height: 10)
                
                Button(action: {
                    self.global.viewSelected = ViewSelected.Teams
                }){
                    HStack{
                        Image("person.3.fill")
                        Text("Teams")
                    }
                }.buttonStyle(leftMenuButtonStyle())
                
                Spacer()
                .frame(height: 10)
                
                Button(action: {
                    self.global.viewSelected = ViewSelected.Lists
                }){
                    HStack{
                        Image("doc.text.fill")
                        Text("Lists")
                    }
                }.buttonStyle(leftMenuButtonStyle())
                
                Spacer()
                .frame(height: 10)
                
                Button(action: {
                    self.global.viewSelected = ViewSelected.Scouters
                }){
                    HStack{
                        Image("system.person.fill")
                        Text("Scouters")
                    }
                }.buttonStyle(leftMenuButtonStyle())
            
        }.padding(20)
    }
}


/*
struct LeftMenuView_Previews: PreviewProvider {
    static var previews: some View {
        LeftMenuView(viewSelected: $viewSelected)
    }
}*/
