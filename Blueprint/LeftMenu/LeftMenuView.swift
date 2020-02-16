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
    
    @EnvironmentObject var global: GlobalEnvironment
    //to do: make buttons from the list below for cleaner and shorter code
    //let Buttons = [ViewSelected.ScoreBoard, ViewSelected.Teams, ViewSelected.Lists]

    var body: some View {
            
        VStack{
            EventSelectorView()
            
            Button(action: {
                self.global.viewSelected =  ViewSelected.ScoreBoard
            }){
                HStack{
                    //Image("doc.on.clipboard.fill")
                    Text("Score Board")
                }
                    .frame(width: 180, height: 40)
            }.buttonStyle(leftMenuButtonStyle())
                .frame(width: 180, height: 40)
            
            Spacer()
                .frame(height: 10)
                
            Button(action: {
                self.global.viewSelected =  ViewSelected.Ranking
                
            }){
                HStack{
                    //Image("tray.full.fill")
                    Text("Ranking")
                }.frame(width: 180, height: 40)
        
            }.buttonStyle(leftMenuButtonStyle())

                Spacer()
                    .frame(height: 10)
                
                Button(action: {
                    self.global.viewSelected = ViewSelected.Teams
                }){
                    HStack{
                        //Image("person.3.fill")
                        Text("Teams")
                    }.frame(width: 180, height: 40)
                    
                }.buttonStyle(leftMenuButtonStyle())
                
                Spacer()
                    .frame(height: 10)
                
                Button(action: {
                    self.global.viewSelected = ViewSelected.Lists
                }){
                    HStack{
                        //Image("doc.text.fill")
                        Text("Lists")
                    }.frame(width: 180, height: 40)
                    
                }.buttonStyle(leftMenuButtonStyle())
                
                Spacer()
                    .frame(height: 10)
                
                Button(action: {
                    self.global.viewSelected = ViewSelected.Scouters
                }){
                    HStack{
                        //Image("person.fill")
                        Text("Scouters")
                    }.frame(width: 180, height: 40)
                    
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
