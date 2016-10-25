//
//  AppDelegate.swift
//  MyFirstProgram
//
//  Created by Wallace Wang on 3/23/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @IBOutlet weak var labelText: NSTextField!
    @IBOutlet weak var messageText: NSTextField!

    @IBAction func changeCase(sender: NSButton) {
        labelText.stringValue = messageText.stringValue.uppercaseString
    }

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

