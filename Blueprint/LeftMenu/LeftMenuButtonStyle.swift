//
//  LeftMenuButtonStyle.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-25.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct leftMenuButtonStyle: ButtonStyle{
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .font(.headline)
            .overlay(RoundedRectangle(cornerRadius: 20.0).stroke(Color.white, lineWidth: 1.0))
    }
}
