//
//  PlayerListViewController.swift
//  Cricstar
//
//  Created by Gurwinder on 2019-07-19.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import UIKit

class PlayerListViewController: UIViewController,UITableViewDelegate , UITableViewDataSource {
    
    
    var playerListList = [UsersStruct]()
    var playerArray = Array<Player>()
    @IBOutlet weak var tbl_users: UITableView!
    
    @IBAction func btn_logout(_ sender: Any)
    {
        self.performSegue(withIdentifier: "LogoutS", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readCustomersPlistFile()
            {
        var player1: Player = Player()
        
        player1.personId = 1
        
        player1.personName = "Sehwag"
        
        player1.personGender = Gender.Male
        
        player1.personSponsor = "Sahara"
        
        player1.playerType = PlayerType.Batsman
        
        player1.countryName = "India"
        
        player1.playerJerseyNo = 95
        
        player1.inPlaying = true
        
        
        
        var player2: Player = Player()
        
        player2.personId = 2
        
        player2.personName = "Sachin"
        
        player2.personGender = Gender.Male
        
        player2.personSponsor = "Sahara"
        
        player2.playerType = PlayerType.Batsman
        
        player2.countryName = "India"
        
        player2.playerJerseyNo = 94
        
        player2.inPlaying = true
        
        
        
        
        
        var player3: Player = Player()
        
        player3.personId = 3
        
        player3.personName = "Kohli"
        
        player3.personGender = Gender.Male
        
        player3.personSponsor = "Sahara"
        
        player3.playerType = PlayerType.Batsman
        
        player3.countryName = "India"
        
        player3.playerJerseyNo = 96
        
        player3.inPlaying = true
        
        
        
        var player4: Player = Player()
        
        player4.personId = 4
        
        player4.personName = "Dhoni"
        
        player4.personGender = Gender.Male
        
        player4.personSponsor = "Sahara"
        
        player4.playerType = PlayerType.Batsman
        
        player4.countryName = "India"
        
        player4.playerJerseyNo = 99
        
        player4.inPlaying = true
        
        
        
        
        
        var player5: Player = Player()
        
        player5.personId = 5
        
        player5.personName = "Shami"
        
        player5.personGender = Gender.Male
        
        player5.personSponsor = "Sahara"
        
        player5.playerType = PlayerType.Bowler
        
        player5.countryName = "India"
        
        player5.playerJerseyNo = 90
        
        player5.inPlaying = true
        
        
        
        var player6: Player = Player()
        
        player6.personId = 6
        
        player6.personName = "Hayden"
        
        player6.personGender = Gender.Male
        
        player6.personSponsor = "Alinta energy"
        
        player6.playerType = PlayerType.Batsman
        
        player6.countryName = "Australia"
        
        player6.playerJerseyNo = 85
        
        player6.inPlaying = true
        
        
        
        
        
        var player7: Player = Player()
        
        player7.personId = 7
        
        player7.personName = "Gilchrist"
        
        player7.personGender = Gender.Male
        
        player7.personSponsor = "Alinta Energy"
        
        player7.playerType = PlayerType.Batsman
        
        player7.countryName = "Australia"
        
        player7.playerJerseyNo = 86
        
        player7.inPlaying = true
        
        
        
        
        
        var player8: Player = Player()
        
        player8.personId = 8
        
        player8.personName = "Ponting"
        
        player8.personGender = Gender.Male
        
        player8.personSponsor = "Alinta Energy"
        
        player8.playerType = PlayerType.Batsman
        
        player8.countryName = "Australia"
        
        player8.playerJerseyNo = 87
        
        player8.inPlaying = true
        
        
        
        var player9: Player = Player()
        
        player9.personId = 9
        
        player9.personName = "maxwell"
        
        player9.personGender = Gender.Male
        
        player9.personSponsor = "Alinta Energy"
        
        player9.playerType = PlayerType.Batsman
        
        player9.countryName = "India"
        
        player9.playerJerseyNo = 88
        
        player9.inPlaying = true
        
        
        
        
        
        var player10: Player = Player()
        
        player10.personId = 10
        
        player10.personName = "Brett lee"
        
        player10.personGender = Gender.Male
        
        player10.personSponsor = "Alinta Energy"
        
        player10.playerType = PlayerType.Bowler
        
        player10.countryName = "Australia"
        
        player10.playerJerseyNo = 89
        
        player10.inPlaying = true
        
        
        
        var player11: Player = Player()
        
        player11.personId = 11
        
        player11.personName = "Gibbs"
        
        player11.personGender = Gender.Male
        
        player11.personSponsor = "Asix"
        
        player11.playerType = PlayerType.Batsman
        
        player11.countryName = "South Africa"
        
        player11.playerJerseyNo = 75
        
        player11.inPlaying = true
        
        
        
        
        
        var player12: Player = Player()
        
        player12.personId = 12
        
        player12.personName = "dekock"
        
        player12.personGender = Gender.Male
        
        player12.personSponsor = "Asix"
        
        player12.playerType = PlayerType.Batsman
        
        player12.countryName = "South Africa"
        
        player12.playerJerseyNo = 76
        
        player12.inPlaying = true
        
        
        
        var player13: Player = Player()
        
        player13.personId = 13
        
        player13.personName = "Amla"
        
        player13.personGender = Gender.Male
        
        player13.personSponsor = "Asix"
        
        player13.playerType = PlayerType.Batsman
        
        player13.countryName = "South Africa"
        
        player13.playerJerseyNo = 77
        
        player13.inPlaying = true
        
        
        
        var player14: Player = Player()
        
        player14.personId = 14
        
        player14.personName = "Devilers"
        
        player14.personGender = Gender.Male
        
        player14.personSponsor = "Asix"
        
        player14.playerType = PlayerType.Batsman
        
        player14.countryName = "Australia"
        
        player14.playerJerseyNo = 78
        
        player14.inPlaying = true
        
        
        
        
        
        var player15: Player = Player()
        
        player15.personId = 15
        
        player15.personName = "Andrew Nill"
        
        player15.personGender = Gender.Male
        
        player15.personSponsor = "Asix"
        
        player15.playerType = PlayerType.Bowler
        
        player15.countryName = "Australia"
        
        player15.playerJerseyNo = 79
        
        player15.inPlaying = true
        
        
        
        
        
        var player16: Player = Player()
        
        player16.personId = 16
        
        player16.personName = "Farhat"
        
        player16.personGender = Gender.Male
        
        player16.personSponsor = "Pepsi"
        
        player16.playerType = PlayerType.Batsman
        
        player16.countryName = "PAkistan"
        
        player16.playerJerseyNo = 65
        
        player16.inPlaying = true
        
        
        
        
        
        var player17: Player = Player()
        
        player17.personId = 17
        
        player17.personName = "Hameed"
        
        player17.personGender = Gender.Male
        
        player17.personSponsor = "Pepsi"
        
        player17.playerType = PlayerType.Batsman
        
        player17.countryName = "Pakistan"
        
        player17.playerJerseyNo = 66
        
        player17.inPlaying = true
        
        
        
        var player18: Player = Player()
        
        player18.personId = 18
        
        player18.personName = "Shoib Malik"
        
        player18.personGender = Gender.Male
        
        player18.personSponsor = "Pepsi"
        
        player18.playerType = PlayerType.Batsman
        
        player18.countryName = "Pakistan"
        
        player18.playerJerseyNo = 67
        
        player18.inPlaying = true
        
        
        
        var player19: Player = Player()
        
        player19.personId = 19
        
        player19.personName = "Sarfaraz"
        
        player19.personGender = Gender.Male
        
        player19.personSponsor = "Pepsi"
        
        player19.playerType = PlayerType.Batsman
        
        player19.countryName = "Pakistan"
        
        player19.playerJerseyNo = 68
        
        player19.inPlaying = true
        
        
        
        var player20: Player = Player()
        
        player20.personId = 20
        
        player20.personName = "Shoib Akhtar"
        
        player20.personGender = Gender.Male
        
        player20.personSponsor = "Pepsi"
        
        player20.playerType = PlayerType.Bowler
        
        player20.countryName = "Pakistan"
        
        player20.playerJerseyNo = 69
        
        player20.inPlaying = true
        
        
        
        var player21: Player = Player()
        
        player21.personId = 21
        
        player21.personName = "Sanath Jayasuriya"
        
        player21.personGender = Gender.Male
        
        player21.personSponsor = "Dialog"
        
        player21.playerType = PlayerType.Batsman
        
        player21.countryName = "Sri Lanka"
        
        player21.playerJerseyNo = 55
        
        player21.inPlaying = true
        
        
        
        var player22: Player = Player()
        
        player22.personId = 22
        
        player22.personName = "Marvan Attapattu"
        
        player22.personGender = Gender.Male
        
        player22.personSponsor = "Dialog"
        
        player22.playerType = PlayerType.Batsman
        
        player22.countryName = "Sri Lanka"
        
        player22.playerJerseyNo = 56
        
        player22.inPlaying = true
        
        
        
        var player23: Player = Player()
        
        player23.personId = 23
        
        player23.personName = "Sangakara"
        
        player23.personGender = Gender.Male
        
        player23.personSponsor = "Dialog"
        
        player23.playerType = PlayerType.Batsman
        
        player23.countryName = "Sri Lanka"
        
        player23.playerJerseyNo = 57
        
        player23.inPlaying = true
        
        
        
        
        
        var player24: Player = Player()
        
        player24.personId = 24
        
        player24.personName = "Mahila Jayavardne"
        
        player24.personGender = Gender.Male
        
        player24.personSponsor = "Dialog"
        
        player24.playerType = PlayerType.Batsman
        
        player24.countryName = "Sri Lanka"
        
        player24.playerJerseyNo = 58
        
        player24.inPlaying = true
        
        
        
        var player25: Player = Player()
        
        player25.personId = 25
        
        player25.personName = "Lasith Malinga"
        
        player25.personGender = Gender.Male
        
        player25.personSponsor = "Dialog"
        
        player25.playerType = PlayerType.Bowler
        
        player25.countryName = "Sri Lanka"
        
        player25.playerJerseyNo = 59
        
        player25.inPlaying = true
        
        
        
        
        
        var player26: Player = Player()
        
        player26.personId = 26
        
        player26.personName = "Marcus Trescothik"
        
        player26.personGender = Gender.Male
        
        player26.personSponsor = "New Balance"
        
        player26.playerType = PlayerType.Batsman
        
        player26.countryName = "England"
        
        player26.playerJerseyNo = 45
        
        player26.inPlaying = true
        
        
        
        
        
        var player27: Player = Player()
        
        player27.personId = 27
        
        player27.personName = "Andrew Strauss"
        
        player27.personGender = Gender.Male
        
        player27.personSponsor = "New Balance"
        
        player27.playerType = PlayerType.Batsman
        
        player27.countryName = "England"
        
        player27.playerJerseyNo = 46
        
        player27.inPlaying = true
        
        
        
        var player28: Player = Player()
        
        player28.personId = 28
        
        player28.personName = "Joe Root"
        
        player28.personGender = Gender.Male
        
        player28.personSponsor = "New Balance"
        
        player28.playerType = PlayerType.Batsman
        
        player28.countryName = "England"
        
        player28.playerJerseyNo = 47
        
        player28.inPlaying = true
        
        
        
        var player29: Player = Player()
        
        player29.personId = 29
        
        player29.personName = "Buttler"
        
        player29.personGender = Gender.Male
        
        player29.personSponsor = "New Balance"
        
        player29.playerType = PlayerType.Batsman
        
        player29.countryName = "England"
        
        player29.playerJerseyNo = 48
        
        player29.inPlaying = true
        
        
        
        var player30: Player = Player()
        
        player30.personId = 30
        
        player30.personName = "Panesar"
        
        player30.personGender = Gender.Male
        
        player30.personSponsor = "New Balance"
        
        player30.playerType = PlayerType.Batsman
        
        player30.countryName = "England"
        
        player30.playerJerseyNo = 49
        
        player30.inPlaying = true

        
       
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        customerArray = [cust1, cust2, cust3, cust4, cust5]
        self.tbl_users.delegate = self
        self.tbl_users.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    func readCustomersPlistFile(){
        
        let plist = Bundle.main.path(forResource: "UserInfo", ofType: "plist")
        
        if let dict = NSMutableDictionary(contentsOfFile: plist!){
            if let customers = dict["Users"] as? [[String:Any]]
            {
                for customer in customers {
                    let id = customer["userID"] as! Int
                    let firstName = customer["userName"] as! String
                    
                    let email = customer["email"] as! String
                    let password = customer["password"] as! String
                    
                    self.customerList.append(UsersStruct(userID: id, userName: firstName, email: email, password: password))
                }
            }
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customerArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "usersCell")  as! UITableViewCell
        
        cell.textLabel?.text = self.customerArray[indexPath.row].fullName
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tapBtnAction(_:)))
        cell.tag = indexPath.row
        cell.addGestureRecognizer(tapGesture)
        return cell
    }
    
    @objc func tapBtnAction(_ sender: UITapGestureRecognizer) {
        print(sender.view!.tag)
        Customer.activeCustomer = self.customerArray[(sender.view?.tag)!]
        self.performSegue(withIdentifier: "GoToDetailS", sender: self)
    }
    
}
