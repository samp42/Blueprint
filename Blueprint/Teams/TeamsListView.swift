//
//  TeamsListView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-22.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

enum orderMode{
    case number, rookie, seed, opr
}

struct TeamsListView: View {
    
    let teams = [11,296,359,1772,2626,3117,3360,3379,3386,3387,3532,3533,3544,3550,3975,3981,3986,3988,3990,3996,4594,4942,4947,4950,4952,4955,4957,5095,5179,5439,5440,5443,5528,5553,5570,5618,5865,5910,5952,5994,6540,6541,6622,6823,6847,6851,6869,6872,6902,6929,6953,7053,7116,7162]
    
    @State var orderSelected = orderMode.number
    
    var body: some View {
        VStack{
            List(0..<teams.count){ team in
                Text("\(self.teams[team])")
                    .background(Color(white: 1, opacity: 0.3))
                .padding(16)
                Spacer()
                    .frame(height: 10)
                //TeamCellView()
                }.listStyle(DefaultListStyle()).frame(width:800)
                .background(Color.clear)
        }.background(Color.clear)
    }
    
}

struct TeamsListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsListView()
    }
}
