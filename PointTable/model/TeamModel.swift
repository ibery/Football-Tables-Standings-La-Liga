//
//  TeamModel.swift
//  PointTable
//
//  Created by Narkoz on 9.04.2022.
//

import Foundation

struct TeamModel : Decodable {
    var country_name : String
    var team_name : String
    var overall_league_position : String
    var overall_league_payed : String
    var overall_league_W : String
    var overall_league_D : String
    var overall_league_L : String
    var overall_league_GF : String
    var overall_league_GA : String
    var overall_league_PTS : String
    var team_badge : String
}
