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
         MenuButton(label: Text("Event")) {
                           Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                               Text("Sherbrooke")
                           }
                           Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                               Text("Montreal")
                           }
                       }
    }
}

struct EventSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        EventSelectorView()
    }
}
