//
//  ScoutersOptionsView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-02-16.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct ScoutersOptionsView: View {
    
    let options = ["Scouters"]
    
    var body: some View {
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

struct ScoutersOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        ScoutersOptionsView()
    }
}
