//
//  ScoreBoardOptionsView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-28.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct ScoreBoardOptionsView: View {
    
    let options = ["Score Table", "Match Schedule"]
    
    var body: some View {
        VStack{
            Button(action: {
                
            }){
                Text("Score Table")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
            
            
            
            Button(action: {
                
            }){
                Text("Ranking")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
            
            
            
            Button(action: {
                
            }){
                Text("Auto Ranking")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
            
            
            
            Button(action: {
                
            }){
                Text("Lower Port Ranking")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
            
            
            
            Button(action: {
                
            }){
                Text("Outer Port Ranking")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
            
            
            
            Button(action: {
                
            }){
                Text("Inner Port Ranking")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
            
            
            
            Button(action: {
                
            }){
                Text("Climb Ranking")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
            
            
            
            Button(action: {
                
            }){
                Text("Power Ranking")
                    .fontWeight(.semibold)
                .frame(width: 220, height: 36)
            }.buttonStyle(optionButtonStyle())
        }
    }
}

struct ScoreBoardOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBoardOptionsView()
    }
}
