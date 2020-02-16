//
//  EventSelectorView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-23.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct EventSelectorView: View {
    @EnvironmentObject var global: GlobalEnvironment
    @State public var selectedEvent: String?
    
    var body: some View {
        MenuButton(label: VStack {
            
            if self.selectedEvent == "Sherbrooke"{
                Text("Sherbrooke")
                .font(.headline)
                .padding(.leading, 10.0)
            } else if self.selectedEvent == "Montreal"{
                Text("Montreal")
                .font(.headline)
                .padding(.leading, 10.0)
            } else {
                Text("Event")
                .font(.headline)
                    .padding(.leading, 10.0)
            }
            /*
            switch self.selectedEvent{
            case "Sherbrooke":
                Text("Sherbrooke")
                .font(.headline)
                    .padding(.leading, 10.0)
            case "Montreal":
                Text("Montreal")
                .font(.headline)
                    .padding(.leading, 10.0)
            default:
                Text("Event")
                .font(.headline)
                    .padding(.leading, 10.0)
            }*/
        }) {
            Button(action: {
                self.selectedEvent = "None"
                self.global.eventSelected = "None"
            }) {
                Text("Event")
            }
            
            Button(action: {
                self.selectedEvent = "Sherbrooke"
                self.global.eventSelected = "Sherbrooke"
            }) {
                Text("Sherbrooke")
            }
            
            Button(action: {
                self.selectedEvent = "Montreal"
                self.global.eventSelected = "Montreal"
            }) {
                Text("Montreal")
            }
            
            }.frame(width: 180.0, height: 50.0).foregroundColor(Color.white)
            .background(Color.clear)
            .font(.subheadline)
    }
}

struct EventSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        EventSelectorView()
    }
}
