//
//  RightMenuView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-23.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct RightMenuView: View {
    var body: some View {
        VStack{
            ActionsView()
            OptionsView()
            Spacer()
            InfoView()
        }
    }
}

struct RightMenuView_Previews: PreviewProvider {
    static var previews: some View {
        RightMenuView()
    }
}
