//
//  AppDelegate.swift
//  BranchingProgram
//
//  Created by Wallace Wang on 4/8/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var IDfield: NSTextField!
    @IBOutlet weak var Passwordfield: NSTextField!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


    @IBAction func checkPassword(sender: NSButton) {
        let validPassword = "password"
        var ID : Int
        ID = IDfield.integerValue
        let myAlert = NSAlert()
        switch ID {
        case 100...150: if (Passwordfield.stringValue == validPassword) {
            myAlert.messageText = "Access granted"
        } else {
            myAlert.messageText = "No access"
            }
            default:
                myAlert.messageText = "No access"
        }
        myAlert.runModal()
    }
}





