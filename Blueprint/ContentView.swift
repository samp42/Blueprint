//
//  ContentView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-18.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

enum ViewSelected{
    case ScoreBoard, Ranking, Teams, Lists, Scouters
    
    func toString() -> String{
        switch self{
        case .ScoreBoard:
            return "Score Board"
        case .Ranking:
            return "Ranking"
        case .Teams:
            return "Teams"
        case .Lists:
            return "Lists"
        case .Scouters:
            return "Scouters"
        }
    }
    
}

class GlobalEnvironment: ObservableObject {
    
    @Published var eventSelected = "None"
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
                
            displayView()
                .position(x: 660, y: 64)
        }
        
    }
    
    func displayView() -> AnyView{
        //check that event is selected
        if self.global.eventSelected != "None"{
            switch self.global.viewSelected{
            case ViewSelected.ScoreBoard:
                return AnyView(ScoreBoardView())
            case ViewSelected.Teams:
                return AnyView(TeamsView())
            case ViewSelected.Lists:
                return AnyView(ListsView())
            case ViewSelected.Scouters:
                return AnyView(ScoutersView())
            case ViewSelected.Ranking:
                return AnyView(RankingView())
            }
            
        } else {
            return AnyView(VStack{
                Spacer()
                Text("No Event Selected.")
                    .font(.headline)
                Spacer()
                })
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GlobalEnvironment())
    }
}
