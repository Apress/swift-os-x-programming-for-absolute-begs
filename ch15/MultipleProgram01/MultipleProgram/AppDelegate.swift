//
//  AppDelegate.swift
//  MultipleProgram
//
//  Created by Wallace Wang on 5/4/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var displayLabel: NSTextField!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func displayButton(sender: AnyObject) {
        if sender is NSButton {
            let whichObject = sender as! NSButton
            switch whichObject.tag {
            case 0:
                displayLabel.stringValue = "Clicked Push Button"
            case 1:
                displayLabel.stringValue = "Clicked Recessed Button"
            case 2:
                displayLabel.stringValue = "Clicked Inline Button"
            default:
                displayLabel.stringValue = "Unknown"
            }
        }
    }

}

