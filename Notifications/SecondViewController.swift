//
//  SecondViewController.swift
//  Notifications
//
//  Created by WuQiang on 2017/3/18.
//  Copyright © 2017年 WuQiang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    
    @IBAction func saveName(_ sender: UIButton) {
        if let value = name.text {
            AppData.addNewName(newName: value)
        }
        name.text = ""
        _ = navigationController?.popViewController(animated: true)
    }
}
