//
//  ViewController.swift
//  Hello
//
//  Created by Austin Felipe on 2016-05-21.
//  Copyright © 2016 Austin Felipe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSLog("%@", "Main::onCreate")
    }
    
    /*
    * viewWillUnload and viewDidUnload are impossible to call, but they refer to onRestart/onDestroy on Android
    **/
    
    override func viewWillAppear(animated: Bool) {
        NSLog("%@", "Main::onStart")
    }
    
    override func viewDidAppear(animated: Bool) {
        NSLog("%@", "Main::onResume")
    }
    
    override func viewWillDisappear(animated: Bool) {
        NSLog("%@", "Main::onPause")
    }
    
    override func viewDidDisappear(animated: Bool) {
        NSLog("%@", "Main::onStop")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onShowMessage(sender: AnyObject) {
        messageLabel.text = messageTextField.text
    }
    
    @IBAction func onOpenSeconScreen(sender: AnyObject) {
        performSegueWithIdentifier("showSecondScreen", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showSecondScreen") {
            
            let newClient = Client(id: 1, name: "Austin Felipe")
            let secondView = (segue.destinationViewController as! SecondView)
            
            secondView.clientFromSegue = newClient
        }
    }
}

