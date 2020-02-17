//
//  RankingOptionsView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-02-16.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct RankingOptionsView: View {
    
    let options = ["Ranking","Auto Ranking","Lower Port Ranking","Outer Port Ranking","Inner Port Ranking","Climb Ranking","Power Ranking","Consistency Ranking","Betterment Ranking"]
    
    var body: some View {
        ForEach(0..<options.count){ item in
            Button(action:{
                print("hello")
            }){
                Text(self.options[item])
            }.buttonStyle(optionButtonStyle())
        }
    }
}

struct RankingOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        RankingOptionsView()
    }
}
