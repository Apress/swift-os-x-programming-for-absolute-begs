//
//  AppDelegate.swift
//  ObjectProgram
//
//  Created by Wallace Wang on 4/15/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var sheriffHitPoints: NSTextField!
    @IBOutlet weak var outlawHitPoints: NSTextField!

    var sheriff = person ()
    var outlaw = person ()

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        sheriffHitPoints.integerValue = sheriff.hitPoints
        outlawHitPoints.integerValue = outlaw.hitPoints
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


    @IBAction func shootButton(sender: NSButton) {
        if sender.tag == 0 {    // Sheriff shooting
            outlaw.hitPoints -= sheriff.shoot()
        } else {    // Outlaw shooting
            sheriff.hitPoints -= outlaw.shoot()
        }
        
        sheriffHitPoints.integerValue = sheriff.hitPoints
        outlawHitPoints.integerValue = outlaw.hitPoints
        
        if sheriffHitPoints.integerValue <= 0 {
            let myAlert = NSAlert()
            myAlert.messageText = "The sheriff died."
            myAlert.runModal()
        } else if outlawHitPoints.integerValue <= 0 {
            let myAlert = NSAlert()
            myAlert.messageText = "The outlaw died."
            myAlert.runModal()
        }
    }
}

