//
//  ScoreBoardView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-22.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct ScoreBoardView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Score Board")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .padding(10.0)
        }
    }
}

struct ScoreBoardView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBoardView()
    }
}
