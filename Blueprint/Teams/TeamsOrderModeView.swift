//
//  TeamsOrderModeView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-24.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct TeamsOrderModeView: View {
    
    @State var orderMode: String = "Team Number"
        
    var body: some View {
        HStack{
            HStack{
                Text("Order by: ")
                    //.padding([.horizontal]: 20)
                
                Button(action: {
                    self.orderMode = "Team Number"
                }){
                    Text("Team number")
                        .frame(width: 130.0)
                }
                
                Spacer()
                    .frame(width: 10)

                Button(action: {
                    self.orderMode = "Seed"
                }){
                    Text("Seed")
                    .frame(width: 130.0)
                }
                
                Spacer()
                .frame(width: 10)
                
                Button(action: {
                    self.orderMode = "Best OPR"
                }){
                    Text("OPR")
                    .frame(width: 130.0)
                }
                
                Spacer()
                .frame(width: 10)
                
                Button(action: {
                    self.orderMode = "Best DPR"
                }){
                    Text("DPR")
                    .frame(width: 130.0)
                }
            }
            
        }.padding(30)
        
        
    }
}

struct TeamsOrderModeView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsOrderModeView()
    }
}
