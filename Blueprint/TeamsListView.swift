//
//  TeamsListView.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-22.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct TeamsListView: View {
    
    enum orderMode{
        case number, rookie, seed, opr
    }
    
    @State var orderSelected = orderMode.number
    
    var body: some View {
    /*HStack{
        Text("Order by:")
            .foregroundColor(.white)
            .fontWeight(.semibold)
        HStack<Button>{
            Button<Text>(action: {orderSelected = orderMode.number}) {
                Text("Number")
            }
            .background(.none)
            .frame(width: 100, height: 30)

            Button<Text>(action: {orderSelected = orderMode.rookie}) {
                Text("Rookie Year")
            }.background(.none)
            .frame(width: 100, height: 30)
                    
            Button<Text>(action: {orderSelected = orderMode.seed}) {
                Text("Seed")
            }.background(.none)
            .frame(width: 100, height: 30)
                    
            Button<Text>(action: {orderSelected = orderMode.opr}) {
                Text("OPR")
            }
        }
            
    }*/
    //.frame(width: 100.0, height: 30.0)
        
    List{
        HStack{
            Image("3990_2018")
            VStack{
                Text("3990")
                Text("2018")
            }
                
        }
    }
    }
    
}

struct TeamsListView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsListView()
    }
}
