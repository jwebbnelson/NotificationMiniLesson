//
//  FirstViewController.swift
//  NotificationMiniLesson
//
//  Created by Jordan Nelson on 10/19/15.
//  Copyright © 2015 Jordan Nelson. All rights reserved.
//

import UIKit

let notificationName = "newNameNotification"

class FirstViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
   
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBAction func sendNotificationTapped(sender: AnyObject) {
    
        let userInfoDictionary = ["fullName": "\(firstNameTextField.text!) \(lastNameTextField.text!)"]
        
        NSNotificationCenter.defaultCenter().postNotificationName(notificationName, object: self, userInfo: userInfoDictionary)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    
    
    
    
    
    
    
    
}
