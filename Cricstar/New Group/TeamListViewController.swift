//
//  TeamListViewController.swift
//  Cricstar
//
//  Created by Gurwinder on 2019-07-19.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import UIKit

class TeamListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    var team1: Team = Team()
    team1.teamCountry = "India"
    team1.teamRank = 1
    team1.players = [player1,player2,player3,player4,player5]
    team1.teamHeadCoach = coach1.personName
    
    var team2: Team = Team()
    team2.teamCountry = "Australia"
    team2.teamRank = 2
    team2.players = [player6,player7,player8,player9,player10]
    team2.teamHeadCoach = coach2.personName
    
    
    var team3: Team = Team()
    team3.teamCountry = "South Africa"
    team3.teamRank = 3
    team3.players = [player11,player12,player13,player14,player15]
    team3.teamHeadCoach = coach3.personName
    
    
    var team4: Team = Team()
    team4.teamCountry = "Pakistan"
    team4.teamRank = 4
    team4.players = [player16,player17,player18,player19,player20]
    team4.teamHeadCoach = coach4.personName
    
    
    var team5: Team = Team()
    team5.teamCountry = "Srilanka"
    team5.teamRank = 5
    team5.players = [player21,player22,player23,player24,player25]
    team5.teamHeadCoach = coach5.personName
    
    
    var team6: Team = Team()
    team6.teamCountry = "England"
    team6.teamRank = 6
    team6.players = [player26,player27,player28,player29,player30]
    team6.teamHeadCoach = coach6.personName


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
