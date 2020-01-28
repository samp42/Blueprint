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
                Button(action: {
                    self.orderMode = "Team Number"
                }){
                    Text("Team number")
                        .frame(width: 130.0)
                }
                Button(action: {
                    self.orderMode = "Seed"
                }){
                    Text("Seed")
                    .frame(width: 130.0)
                }
                Button(action: {
                    self.orderMode = "OPR"
                }){
                    Text("OPR")
                    .frame(width: 130.0)
                }
                Button(action: {
                    self.orderMode = "DPR"
                }){
                    Text("DPR")
                    .frame(width: 130.0)
                    /*if orderMode=="DPR"{
                        Text("DPR")
                        .frame(width: 130.0)
                        .background(.white)
                    } else {
                        Text("DPR")
                        .frame(width: 130.0)
                    }*/
                }
            }
            
        }
        
        
    }
}

struct TeamsOrderModeView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsOrderModeView()
    }
}
