//
//  AppDelegate.swift
//  RadioProgram
//
//  Created by Wallace Wang on 5/6/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var radioMatrix: NSMatrix!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func whichButton(sender: NSButton) {
        let myAlert = NSAlert()
        myAlert.messageText = "You clicked the radio button with a Tag \(radioMatrix.selectedTag())"
        myAlert.runModal()
    }

}

