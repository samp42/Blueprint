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
                    
                    self.global.viewSelected = ViewSelected(rawValue: item)!
                    
                }){
    
                        Text(self.views[item])
                            .frame(width: 180, height: 40)
                    
                }//Styling
                    .background(self.views[item] == ViewSelected.toString(self.global.viewSelected)() ? Color("DarkButtonSelected") : Color("DarkBlue"))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(RoundedRectangle(cornerRadius: 20.0)
                    .stroke(Color.white, lineWidth: 1.0))
                .buttonStyle(leftMenuButtonStyle())
                
                
                Spacer()
                    .frame(height: 10)
                
            }//End of ForEach
            
        }.padding(20)
    }
}


/*
struct LeftMenuView_Previews: PreviewProvider {
    static var previews: some View {
        LeftMenuView(viewSelected: $viewSelected)
    }
}*/
