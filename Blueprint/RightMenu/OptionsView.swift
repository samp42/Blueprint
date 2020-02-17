//
//  OptionsView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-28.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct OptionsView: View {
    @EnvironmentObject var global: GlobalEnvironment
    var body: some View {
        VStack{
            displayOptionsView()
        }
    }
    
    func displayOptionsView() -> AnyView{
        switch self.global.viewSelected{
        case ViewSelected.ScoreBoard:
            return AnyView(ScoreBoardOptionsView())
        case ViewSelected.Teams:
            return AnyView(TeamsOptionsView())
        case ViewSelected.Ranking:
            return AnyView(RankingOptionsView())
        case ViewSelected.Lists:
            return AnyView(ListsOptionsView())
        case ViewSelected.Scouters:
            return AnyView(ScoutersOptionsView())
        }
    }
    
}



struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView()
    }
}
