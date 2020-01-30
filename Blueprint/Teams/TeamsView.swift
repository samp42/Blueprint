//
//  TeamsView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-24.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct TeamsView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Teams")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .padding(10.0)
            
            HStack{
                Text("Order teams by: ")
                TeamsOrderModeView()
            }.background(Color("DarkBlue"))
                .frame(height: 30.0)
                .cornerRadius(15.0)

            TeamsListView()
        }
    }
}

struct TeamsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsView()
    }
}
