//
//  TeamsOptionsView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-28.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct TeamsOptionsView: View {
    var body: some View {
        VStack{
            Button(action: {
                
            }){
                Text("Pit Scouting")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
            
            Button(action: {
                
            }){
                Text("Matches Scouting")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
            
            Button(action: {
                
            }){
                Text("Statistics")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
        }
    }
}

struct TeamsOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsOptionsView()
    }
}
