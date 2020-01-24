//
//  ContentView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-18.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //variables
    @State public var eventSelected: String? = "Montreal"
    public var teamSelected: Int? = 3990
    public var gameSelected: String? = "Infinite Recharge: 2020"
    
    var body: some View {
        //main divisions
        ZStack{
            MainSectionView()
            .frame(minWidth: 600, maxWidth: .infinity)
            HStack{
                VStack{
                    EventSelectorView()
                    LeftMenuView()
                        .padding(.top, 20)
                    Spacer()
                }.padding(.top, 40)
            .background(/*@START_MENU_TOKEN@*/Color("DarkBlue")/*@END_MENU_TOKEN@*/)
                .frame(minWidth: 200, maxWidth: 200, minHeight: 0, maxHeight: .infinity, alignment: .leading)
                
                Spacer()
                    .frame(minWidth: 810.0)
                
                VStack{
                    Spacer()
                    InfoView()
                }.frame(width: 240)
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)

        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
