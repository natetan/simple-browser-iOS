//
//  ViewController.swift
//  Webs
//
//  Created by iGuest on 10/31/16.
//  Copyright © 2016 yulongproductions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goButton(_ sender: AnyObject) {
        performAction()
    }
    
    @IBAction func textFieldEnter(_ sender: AnyObject) {
        performAction()
    }
    
    public func performAction() {
        let url = URL(string: address.text!)
        let request = URLRequest(url: url!)
        webDisplay.loadRequest(request as URLRequest)
    }
    @IBOutlet var address: UITextField!

    @IBOutlet var webDisplay: UIWebView!
}

