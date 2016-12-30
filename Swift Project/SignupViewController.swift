//
//  SignupViewController.swift
//  SwiftProject
//
//  Created by Alex Yu on 12/29/16.
//  Copyright © 2016 Jack Zumwalt. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    // name variables
    @IBOutlet weak var EmailText: UITextField!
    @IBOutlet weak var UsernameText: UITextField!
    @IBOutlet weak var PasswordText: UITextField!
    @IBOutlet weak var RePasswordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SignupButton(_ sender: Any) {
    
        let Email = EmailText.text
        let Username = UsernameText.text
        let Password = PasswordText.text
        let RePassword = RePasswordText.text
        
        
        if((Email!.isEmpty) || (Username!.isEmpty) || (Password!.isEmpty) || (RePassword!.isEmpty)
            )
        {
            // alert message if fields are not filled
            displayAlertMessage(Message: "Fill all fields")
            
            return
        }
       
        if(Password != RePassword)
        {
            // display alert message if pass dont match
            displayAlertMessage(Message: "Passwords do not match")
            
            return
            
        }
        

        //store data
        UserDefaults.standard.set(Email, forKey:"Email")
        UserDefaults.standard.set(Email, forKey:"Username")
        UserDefaults.standard.set(Email, forKey:"Password")
        UserDefaults.standard.synchronize();
    
        let Alert = UIAlertController.init(title:"Success", message: "Sign Up is Successful!", preferredStyle: UIAlertControllerStyle.alert)
        
       
        let Action = UIAlertAction.init(title: "Ok", style: UIAlertActionStyle.default) {(UIAlertAction) -> Void in self.dismiss(animated: true, completion:nil)
        }
        
        Alert.addAction(Action)
        self.present(Alert, animated:true, completion: nil)
    }
    
    func displayAlertMessage(Message:String)
    {
        let Alert = UIAlertController.init(title:"Alert", message: Message, preferredStyle: UIAlertControllerStyle.alert)
        
        let Action = UIAlertAction.init(title: "Ok", style: UIAlertActionStyle.default, handler:nil)
        
        Alert.addAction(Action)
        
        self.present(Alert, animated:true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
