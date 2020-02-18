//
//  TeamCellView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-26.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct TeamCellView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                /*Image("3990_2018")
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .resizable()*/
                
                VStack{
                    Text("3990")
                        .font(.headline)
                    Text("Tech for Kids")
                        .font(.subheadline)
                    Spacer()
                        .frame(height: 10.0)
                    Text("Montreal, Québec, Canada")
                }
            }
        }.foregroundColor(Color.black)
    }
}

struct TeamCellView_Previews: PreviewProvider {
    static var previews: some View {
        TeamCellView()
    }
}
