//
//  ViewController.swift
//  24sep
//
//  Created by francois buisson on 24/09/17.
//  Copyright © 2017 dilipGurjar. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    

    @IBAction func alertButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "title", message: "message", preferredStyle: .alert)
        let save = UIAlertAction(title: "Save", style: .default) { (UIAlertAction) in
            
        }
        let cancle = UIAlertAction(title: "Cancle", style: .destructive) { (UIAlertAction) in
            
        }
        
        alert.addAction(save)
        alert.addAction(cancle)
        present(alert, animated: true)
    }
    
    @IBAction func Notification(_ sender: UIButton) {
        let context = UNMutableNotificationContent()
            context.body = "notification body"
            context.title = "notification title"
            context.sound = UNNotificationSound.default()
            context.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: "timeDone", content: context, trigger: trigger)
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
    }
    


}

