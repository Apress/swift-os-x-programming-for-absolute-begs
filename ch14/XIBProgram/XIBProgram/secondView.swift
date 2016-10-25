//
//  secondView.swift
//  XIBProgram
//
//  Created by Wallace Wang on 4/27/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

class secondView: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    @IBAction func closeWindow(sender: NSButton) {
        self.close()
    }
}
