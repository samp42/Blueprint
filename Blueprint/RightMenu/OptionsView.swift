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
            showOptionsMenu(currentView: &global.viewSelected)
        }
    }
}

func showOptionsMenu(currentView: inout ViewSelected) -> AnyView {
    switch currentView{
    case ViewSelected.ScoreBoard:
        return AnyView(ScoreBoardOptionsView())
    case ViewSelected.Lists:
        return AnyView(ListsOptionsView())
    default:
        return AnyView(TeamsOptionsView())
    }
}

struct OptionsView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsView()
    }
}
