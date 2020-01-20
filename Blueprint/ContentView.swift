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
        HStack{
            LeftMenu()
            VStack{
                Text("world")
            }.frame(width: .infinity, height: .infinity)
            VStack{
                Spacer()
                InfoView()
            }.frame(width: .infinity, height: .infinity)
        }.frame(width: .infinity, height: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
