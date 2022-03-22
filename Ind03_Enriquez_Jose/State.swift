//
//  State.swift
//  Ind03_Enriquez_Jose
//
//  Created by Jose Francisco Enriquez on 3/10/22.
//

import Foundation
import UIKit

//class to make state objects andhold their corresponding information
class State: NSObject {
    var name: String
    var nickName: String
    var area: String
    var flag: UIImage
    var map: UIImage
    
    init(name: String, nickName: String, area: String, flag: UIImage!, map: UIImage!) {
        self.name = name
        self.nickName = nickName
        self.area = area
        self.flag = flag!
        self.map = map!
    }
}
