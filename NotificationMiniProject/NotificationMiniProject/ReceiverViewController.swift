//
//  ReceiverViewController.swift
//  NotificationMiniProject
//
//  Created by mac-admin on 4/11/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import UIKit

class ReceiverViewController: UIViewController {

    @IBOutlet weak var receiverLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ReceiverViewController.notificationReceieved(_:)), name: "sendButtonTapped", object: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func notificationReceieved(notification: NSNotification) {
        guard let userInfo = notification.userInfo,
            text = userInfo["text"] as? String else {return}
        receiverLabel.text = text
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
