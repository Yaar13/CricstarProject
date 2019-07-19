//
//  Team.swift
//  Cricstar
//
//  Created by Gurwinder on 2019-07-19.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import Foundation

class Team : Display
{
    
    var teamCountry : String
    var players = Array<Player>() // var player = [Player]
    var teamRank : Int
    var teamHeadCoach : String
    
    init()
    {
        self.teamCountry = ""
        self.teamRank = 0
        self.teamHeadCoach = String()
    }
    func display()
    {
        print( "teamCountry : \(teamCountry)"+"\nteamRank : \(teamRank)"+"\nPlayers 1 : \(players[0].personName)"+"\nPlayers 2 : \(players[1].personName)"+"\nPlayers 3 : \(players[2].personName)"+"\nPlayers 4 : \(players[3].personName)"+"\nPlayers 5 : \(players[4].personName)"+"\nteamHeadCoach : \(teamHeadCoach)")
    }
    
}
