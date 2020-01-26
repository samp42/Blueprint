//
//  EventSelectorView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-23.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct EventSelectorView: View {
    var body: some View {
        MenuButton(label: Text("Event")
            .font(.headline)
            .padding(.leading, 10.0)) {
            Button(action: {
                
            }) {
                Text("Sherbrooke")
                }
            Button(action: {
                
            }) {
                Text("Montreal")
                }
         }
         .frame(width: 220.0, height: 50.0)
         .background(Color("DropButtonBlue"))
         .cornerRadius(25)
    }
}

struct EventSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        EventSelectorView()
    }
}
