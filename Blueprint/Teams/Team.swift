//
//  Team.swift
//  Blueprint
//
//  Created by Samuel Proulx on 2020-01-26.
//  Copyright © 2020 SP. All rights reserved.
//

import SwiftUI

struct team: Hashable, /*Codable,*/ Identifiable {
    var id: ObjectIdentifier
    
    var city: String //labeled as city
    var stateProv: String //labeled as state_prov
    var country: String //labeled as country
    
    var nickname: String //commun team name, labeled as nickname
    var teamNumber: Int //labeled as team_number
    var rookieYear: Int //labeled as rookie_year
    
}
