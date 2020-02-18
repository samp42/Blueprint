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
    let views = ["Score Board", "Ranking", "Teams", "Lists", "Scouters"]

    var body: some View {
            
        VStack{
            EventSelectorView()
            
            ForEach(0..<views.count){ item in
                Button(action:{
                    //to change
                    self.global.viewSelected = ViewSelected(rawValue: item)!
                }){
                    Text(self.views[item])
                        .frame(width: 180, height: 40)
                }.background(self.views[item] == ViewSelected.toString(self.global.viewSelected)() ? Color(white: 1, opacity: 1) : Color("DarkBlue"))
                    .cornerRadius(22)
                    .buttonStyle(leftMenuButtonStyle())
                
                Spacer()
                    .frame(height: 10)
            }
            
        }.padding(20)
    }
}


/*
struct LeftMenuView_Previews: PreviewProvider {
    static var previews: some View {
        LeftMenuView(viewSelected: $viewSelected)
    }
}*/
