//
//  ViewController.swift
//  Notifications
//
//  Created by WuQiang on 2017/3/18.
//  Copyright © 2017年 WuQiang. All rights reserved.
//



import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var counter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let center = NotificationCenter.default
        let name = Notification.Name("Update Data")
        center.addObserver(self, selector: #selector(updateCounter(notification:)), name: name, object: nil)
    }
    func updateCounter(notification: NSNotification) {
        if let info = notification.userInfo {
            let type = info["type"] as? String
            if type == "New Name" {
                let current = AppData.names
                counter.text = String(current.count)
            }
        }
        let center = NotificationCenter.default
        let name = Notification.Name("Update Data")
        center.removeObserver(self, name: name, object: nil)
    }
}
