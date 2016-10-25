//
//  AppDelegate.swift
//  DateProgram
//
//  Created by Wallace Wang on 5/6/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var chooseDate: NSDatePicker!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func showDate(sender: NSButton) {
        let myAlert = NSAlert()
        myAlert.messageText = "You chose this date =  \(chooseDate.dateValue)"
        myAlert.runModal()
    }

}

