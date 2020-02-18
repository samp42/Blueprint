//
//  TeamsOptionsView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-28.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct TeamsOptionsView: View {
    
    let options = ["Teams","Pre-comp Scouting","Pit Scouting","Match Scouting", "Statistics"]
    
    var body: some View {
        VStack{
            
            ForEach(0..<options.count){item in
                Button(action: {
                    print("clicked")
                }){
                    Text(self.options[item])
                        .fontWeight(.semibold)
                    .frame(width: 220, height: 36)
                }.buttonStyle(optionButtonStyle())
            }
            
        }
    }
}

struct TeamsOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsOptionsView()
    }
}
