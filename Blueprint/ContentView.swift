//
//  ContentView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-18.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

enum ViewSelected:Int{
    case ScoreBoard = 0, Teams, Lists
    
    func toString() -> String{
        switch self{
        case .ScoreBoard:
            return "Score Board"
        case .Teams:
            return "Teams"
        case .Lists:
            return "Lists"
        }
    }
}

class GlobalEnvironment: ObservableObject {
    
    //@Published var eventSelected? = nil
    @Published var viewSelected = ViewSelected.Teams
    
    /*func getSelectedView(viewToShow: ViewSelected)->Void{
        viewSelected = ViewSelected.viewToShow
    }*/
}

struct ContentView: View {
    
    //variables
    
    @EnvironmentObject var global: GlobalEnvironment
    public var teamSelected: Int? = 3990
    public var gameSelected: String? = "Infinite Recharge: 2020"
    
    var body: some View {
        //main divisions
        ZStack{
            MainSectionView()
            .frame(minWidth: 600, maxWidth: .infinity)
            HStack{
                VStack{
                    LeftMenuView()
                    Spacer()
                }.padding(.top, 40)
            .background(/*@START_MENU_TOKEN@*/Color("DarkBlue")/*@END_MENU_TOKEN@*/)
                .frame(minWidth: 200, maxWidth: 200, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                
                Spacer()
                    .frame(minWidth: 810.0)
                
                VStack{
                    RightMenuView()
                }.frame(width: 240)
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)

            Text("\(global.viewSelected.toString())")
            
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GlobalEnvironment())
    }
}
