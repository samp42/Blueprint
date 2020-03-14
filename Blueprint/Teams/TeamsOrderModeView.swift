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
    let orderModes = ["Team Number","Team Number","Best OPR","Best DPR"]
    
    var body: some View {
        HStack{
            HStack{
                ForEach(0..<orderModes.count){
                    item in
                    Button(action:{
                        
                    }){
                        Text(self.orderModes[item])
                            .frame(width:148, height: 32)
                            .offset(y: 4)
                    }
                }
            }.frame(maxWidth: 800)
            
        }.padding(30)
        
    }
}

struct TeamsOrderModeView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsOrderModeView()
    }
}
