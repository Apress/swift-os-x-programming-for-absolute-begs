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
        
        myAlert.addButtonWithTitle("Ignore it")
        myAlert.addButtonWithTitle("Run")
        myAlert.addButtonWithTitle("Panic")
        myAlert.addButtonWithTitle("Do nothing")
        
        let choice = myAlert.runModal()
        
        switch choice {
        case NSAlertFirstButtonReturn:
            print ("User clicked Ignore it")
        case NSAlertSecondButtonReturn:
            print ("User clicked Run")
        case NSAlertThirdButtonReturn:
            print ("User clicked Panic")
        case NSAlertThirdButtonReturn + 1:
            print ("User clicked Do nothing")
        default: break
        }
        
        if myAlert.suppressionButton!.state == 1 {
            print ("Checked")
        } else {
            print ("Not checked")
        }
        
    }

}

