//
//  Cliente.swift
//  Hello
//
//  Created by Austin Felipe on 2016-05-22.
//  Copyright © 2016 Austin Felipe. All rights reserved.
//

import UIKit

class Client: NSObject {
    var id: Int = 0
    var name: String = ""
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}
