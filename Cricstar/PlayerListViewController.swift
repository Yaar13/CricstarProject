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
    var playerArray = Array<Customer>()
    @IBOutlet weak var tbl_users: UITableView!
    
    @IBAction func btn_logout(_ sender: Any)
    {
        self.performSegue(withIdentifier: "LogoutS", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        readCustomersPlistFile()
        
        
        let b1: Mobile = Mobile(Id: 1, billDate: Date(), billType: billTypes.Mobile, totalBillAmount: 99.52, mobileManufacturer: "Samsung", planName: "CanadaWide", mobileNumber: "+1235463786", internetUsed: 23, minuteUsed: 34)
        let b2: Mobile = Mobile(Id: 2, billDate: Date(), billType: billTypes.Mobile, totalBillAmount: 76.76, mobileManufacturer: "Iphone", planName: "Global", mobileNumber: "+18987657787", internetUsed: 67, minuteUsed: 456)
        
        let b3: Internet = Internet(Id: 1, billDate: Date(), billType: billTypes.Internet, totalBillAmount: 23.09, providerName: "Bell", internetUsed: 33)
        let b4: Internet = Internet(Id: 2, billDate: Date(), billType: billTypes.Internet, totalBillAmount: 236.09, providerName: "Rogers", internetUsed: 786)
        
        let b5: Hydro = Hydro(Id: 1, billDate: Date(), billType: billTypes.Hydro, totalBillAmount: 343.98, agencyName: "Water World", unitconsumed: 56)
        let b6: Hydro = Hydro(Id: 2, billDate: Date(), billType: billTypes.Hydro, totalBillAmount: 342.8, agencyName: "Jal", unitconsumed: 78)
        
        //Creating Customer Objects
        
        let cust1: Customer = Customer(customerId: "1", firstName: "Naina", lastName: "Vaghasiya", email: "naina@gmail.com")
        
        cust1.billDictionary[1] = b1
        cust1.billDictionary[2] = b3
        
        let cust2: Customer = Customer(customerId: "2", firstName: "Karan", lastName: "Kundan", email: "Karan@gmail.com")
        
        cust2.billDictionary[1] = b2
        cust2.billDictionary[2] = b6
        cust2.billDictionary[3] = b5
        
        let cust3: Customer = Customer(customerId: "3", firstName: "Vipul", lastName: "Garg", email: "vipul.garg@gmail.com")
        
        cust3.billDictionary[1] = b4
        
        
        let cust4: Customer = Customer(customerId: "4", firstName: "Shivani", lastName: "Dhiman", email: "Shivani18@gmail.com")
        
        cust4.billDictionary[1] = b3
        
        
        let cust5: Customer = Customer(customerId: "5", firstName: "Jazz", lastName: "Patel", email: "Jazz123@gmail.com")
        
        cust5.billDictionary[1] = b6
        
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
