//
//  ApplicationData.swift
//  Notifications
//
//  Created by WuQiang on 2017/3/18.
//  Copyright © 2017年 WuQiang. All rights reserved.
//


import Foundation

struct ApplicationData {
    var names: [String]
    
    mutating func addNewName(newName: String) {
        names.append(newName)
        
        let center = NotificationCenter.default
        let name = Notification.Name("Update Data")
        center.post(name: name, object: nil, userInfo: nil)
    }
}
var AppData = ApplicationData(names: [])
