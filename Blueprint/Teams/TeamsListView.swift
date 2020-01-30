//
//  TeamsListView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-22.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct TeamsListView: View {
    
    enum orderMode{
        case number, rookie, seed, opr
    }
    
    @State var orderSelected = orderMode.number
    
    var body: some View {
        VStack{
            List{
                TeamCellView()
                TeamCellView()
                TeamCellView()
                TeamCellView()
            }
        }
    }
    
}

struct TeamsListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsListView()
    }
}
