//
//  AppDelegate.swift
//  CheckProgram
//
//  Created by Wallace Wang on 5/5/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var dogBox: NSButton!
    @IBOutlet weak var catBox: NSButton!
    @IBOutlet weak var birdBox: NSButton!
    @IBOutlet weak var messageBox: NSTextField!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func checkBoxes(sender: NSButton) {
        let nextLine = "\r\n"
        var message : String = ""
        if dogBox.state == 1 {
            message = "Dog check box selected" + nextLine
        } else {
            message = "Dog check box NOT selected" + nextLine
        }

        if catBox.state == 1 {
            message = message + "Cat check box selected" + nextLine
        } else {
            message = message + "Cat check box NOT selected" + nextLine
        }

        if birdBox.state == 1 {
            message = message + "Bird check box selected" + nextLine
        } else {
            message = message + "Bird check box NOT selected" + nextLine
        }
        
        messageBox.stringValue = message
    }

}

