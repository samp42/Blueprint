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
            .foregroundColor(Color.white)
            .background(Color.red)
            .cornerRadius(18)
            .font(.subheadline)
            .padding(.bottom, 6)
            
    }
}
