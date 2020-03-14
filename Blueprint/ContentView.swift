//
//  ContentView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-18.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

enum ViewSelected: Int{
    case ScoreBoard=0, Ranking, Teams, Lists, Scouters
    
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
    
    //geometry
    @Published var midSectionWidth = 0
}

struct ContentView: View {
    
    //variables
    @EnvironmentObject var global: GlobalEnvironment
    
    public var teamSelected: Int? = 3990
    public var gameSelected: String? = "Infinite Recharge: 2020"
    //var width = body.GeometryReader.screenGeometry.size.width
    
    var body: some View {
        //main divisions
        GeometryReader{ screenGeometry in
            ZStack(alignment: .top){
                MainSectionView()
                    .frame(width: screenGeometry.size.width)
                
                HStack{
                    VStack{
                        LeftMenuView()
                        Spacer()
                    }.padding(.top, 40)
                .background(/*@START_MENU_TOKEN@*/Color("DarkBlue")/*@END_MENU_TOKEN@*/)
                        .frame(width: 200, height: screenGeometry.size.height, alignment: .leading)
                    
                    Spacer()
                        .frame(minWidth: (768-200-240))
                    
                    VStack{
                        RightMenuView()
                    }.frame(width: 240)
                }.frame(minWidth: 768, maxWidth: .infinity, minHeight: 500, maxHeight: .infinity, alignment: .top)
                    
                self.displayView()
                    //.position(x: 480, y: 64)
            }
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
