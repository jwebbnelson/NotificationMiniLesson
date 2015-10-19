//
//  SecondViewController.swift
//  NotificationMiniLesson
//
//  Created by Jordan Nelson on 10/19/15.
//  Copyright © 2015 Jordan Nelson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NSNotificationCenter.defaultCenter().addObserver(self, selector: "setLabelText:", name: notificationName, object: nil)
    }

    func setLabelText(notification: NSNotification) {
        if let userDictionary = notification.userInfo {
           let fullNameString = userDictionary["fullName"] as! String
            nameLabel.text = fullNameString
        }
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
