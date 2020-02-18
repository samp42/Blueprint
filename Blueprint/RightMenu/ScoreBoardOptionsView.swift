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
            
            ForEach(0..<options.count){item in
                Button(action: {
                    
                }){
                    Text(self.options[item])
                        .fontWeight(.semibold)
                    .frame(width: 220, height: 36)
                }.buttonStyle(optionButtonStyle())
            }
            
        }
    }
}

struct ScoreBoardOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBoardOptionsView()
    }
}
