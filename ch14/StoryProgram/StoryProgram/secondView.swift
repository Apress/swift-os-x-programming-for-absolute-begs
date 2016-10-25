//
//  secondView.swift
//  StoryProgram
//
//  Created by Wallace Wang on 5/1/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

class secondView: NSViewController {
    
    @IBOutlet weak var receivedText: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        receivedText.stringValue = self.representedObject! as! String
    }
    

    @IBAction func dismiss(sender: AnyObject) {
        self.dismissController(self)
    }

}
