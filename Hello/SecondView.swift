//
//  SecondView.swift
//  Hello
//
//  Created by Austin Felipe on 2016-05-22.
//  Copyright © 2016 Austin Felipe. All rights reserved.
//

import UIKit

class SecondView: UIViewController {
    @IBOutlet weak var clientLabel: UILabel!
    
    var clientFromSegue: Client! = nil
    
    override func viewDidAppear(animated: Bool) {
        
        if (clientFromSegue != nil) {
            clientLabel.text = "\(clientFromSegue.id): \(clientFromSegue.name)"
        }
    }
}
