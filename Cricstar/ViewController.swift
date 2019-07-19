//
//  ViewController.swift
//  Cricstar
//
//  Created by Gurparkash Kaur on 2019-07-04.
//  Copyright © 2019 Parag Garg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var IconImg: UIImageView!
    @IBOutlet weak var Userid: UITextField!
    @IBOutlet weak var PasswordMSg: UITextField!
    
    @IBOutlet weak var RememberMe: UIButton!
    @IBAction func SwitchBTnMsg(_ sender: UISwitch) {
        var UsersDict = [UsersStruct]()
        
        // getting user defaults reference
        let userDefault = UserDefaults.standard
    }
    @IBAction func LoginMsg(_ sender: UIButton) {
        
        if let email = Userid.text{
            if !email.isEmpty
            {
                
                if email.isVAlid
                {
                    if let password = PasswordMSg.text{
                        if !password.isEmpty{
                            if PasswordMSg.sizeCheck(){
                                
                                if  checkEmailPassword(email: email, password: password) {
                                    setRememberMe()
                                    
                                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                    let dashboardVC = storyboard.instantiateViewController(withIdentifier: "customerListVC") as! CustomerListViewController
                                    
                                    self.navigationController?.pushViewController(dashboardVC, animated: true)
                                    
                                    
                                }else{
                                    showAlerBox(msg: "You have enter wrong credentials")
                                }
                                
                            }else{
                                showAlerBox(msg: "Invalid password size")
                            }
                            
                        }else{
                            showAlerBox(msg: "Please enter password")
                        }
                    }
                }
                else{
                    showAlerBox(msg: "Please enter valid email")
                }
            }else{
                showAlerBox(msg: "Please enter useremail")
            }
        }
    }
    
    
    
    func showAlerBox(msg : String)  {
        let alertController = UIAlertController(title: "CustomerBillApp", message:
            msg, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: .default))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    func readCustomersPlistFile(){
        
        let plist = Bundle.main.path(forResource: "Info_detail", ofType: "plist")
        
        if let dict = NSMutableDictionary(contentsOfFile: plist!){
            if let Customers = dict["User"] as? [[String:Any]]
            {
                for customer in Customers {
                    let id = customer["userId"] as! Int
                    let firstName = customer["name"] as! String
                    
                    let email = customer["email"] as! String
                    let password = customer["password"] as! String
                    
                    self.UsersDict.append(UsersStruct(userId: id, name: firstName, email: email, password: password))
                    //self.UsersDict.append(UsersStruct(userID: <#T##Int#>, userName: <#T##String#>, email: <#T##String#>, password: <#T##String#>))
                }
            }
        }
        
    }
    func checkEmailPassword(email : String , password : String) -> Bool{
        
        for everyCustomer in UsersDict{
            if (everyCustomer.email == email && everyCustomer.password == password) {
                return true
            }
        }
        return false
    }
    
    func setRememberMe()  {
        if RememberMe.isOn {
            userDefault.set(self.txtemailId.text, forKey: "email")
            userDefault.set(self.txtpassword.text, forKey: "password")
        }else{
            userDefault.set("", forKey: "email")
            userDefault.set("", forKey: "password")
        }
    }
    
    func getRememberMe()
    {
        let userDefault = UserDefaults.standard
        
        if let email = userDefault.string(forKey: "email")
        {
            Userid.text = email
            
            if let password = userDefault.string(forKey: "password")
            {
            PasswordMSg.text = password
                RememberMe.setOn(true, animated: false)
            }
        }
    }
    override func viewDidLoad() {
        RememberMe.isOn = false
        getRememberMe()
        //readCustomersPlistFile()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}



    

    
    
    

    

