//
//  ViewController.swift
//  StoryMenu
//
//  Created by Wallace Wang on 5/13/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

   @IBOutlet weak var textResult: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func myMenu(sender: NSMenuItem) {
        textResult.stringValue = "Clicked on = " + sender.title
    }
}

