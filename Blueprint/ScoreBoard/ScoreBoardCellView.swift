//
//  ScoreBoardCellView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-26.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct ScoreBoardCellView: View {
    @State var team: String = ""
    var body: some View {
        TextField("Red1", text: $team)
    }
}

struct ScoreBoardCellView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreBoardCellView()
    }
}
