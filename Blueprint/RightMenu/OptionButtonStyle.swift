//
//  OptionButtonStyle.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-28.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct optionButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        
        configuration.label
            .background(Color("RightButtonUnselected"))
            .foregroundColor(Color.white)
            .cornerRadius(18)
            .font(.subheadline)
            .padding(.bottom, 6)
            .frame(width: 220, height: 36)
    }
}
