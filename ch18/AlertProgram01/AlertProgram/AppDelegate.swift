//
//  AppDelegate.swift
//  AlertProgram
//
//  Created by Wallace Wang on 5/12/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func showAlert(sender: NSButton) {
        let myAlert = NSAlert()
        myAlert.messageText = "Warning!"
        myAlert.informativeText = "Zombies approaching"
        myAlert.alertStyle = NSAlertStyle.CriticalAlertStyle
        myAlert.showsSuppressionButton = true
        myAlert.suppressionButton?.title = "Stop scaring me"
        myAlert.runModal()
    }

}

