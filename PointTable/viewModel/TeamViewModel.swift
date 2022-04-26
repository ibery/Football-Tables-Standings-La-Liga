//
//  TeamViewModel.swift
//  PointTable
//
//  Created by Narkoz on 9.04.2022.
//

import Foundation

struct TeamListViewModel {
    let teamList : [TeamModel]
    
    func numberOfRowInSection () -> Int {
        
        return self.teamList.count
    }
    
    func teamAtIndex (_ Index: Int) -> TeamViewModel{
        let team = self.teamList[Index]
        return TeamViewModel(teamModel: team)
    
    }
}

struct TeamViewModel {
    let teamModel : TeamModel
    
    var country_name : String {
        return self.teamModel.country_name
    }
    var team_name : String {
        return self.teamModel.team_name
    }
    var overall_league_position : String{
        return self.teamModel.overall_league_position
    }
    var overall_league_payed : String{
        return self.teamModel.overall_league_payed
    }
    var overall_league_W : String {
        return self.teamModel.overall_league_W
    }
    var overall_league_D : String{
        return self.teamModel.overall_league_D
    }
    var overall_league_L : String{
        return self.teamModel.overall_league_L
    }
    var overall_league_GF : String{
        return self.teamModel.overall_league_GF
    }
    var overall_league_GA : String{
        return self.teamModel.overall_league_GA
    }
    var overall_league_PTS : String{
        return self.teamModel.overall_league_PTS
    }
    var team_badge : String{
        return self.teamModel.team_badge
    }
}

