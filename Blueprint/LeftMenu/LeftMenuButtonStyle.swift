//
//  LeftMenuButtonStyle.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-25.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct leftMenuButtonStyle: ButtonStyle{
    var isSelected = false
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .background(self.isSelected ? Color(white: 1.0, opacity: 0.3) : Color.clear)
            .font(.headline)
            .overlay(RoundedRectangle(cornerRadius: 20.0).stroke(Color.white, lineWidth: 1.0))
    }
}
