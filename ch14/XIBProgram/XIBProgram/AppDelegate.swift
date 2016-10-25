//
//  AppDelegate.swift
//  XIBProgram
//
//  Created by Wallace Wang on 4/27/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    var windowController = secondView(windowNibName: "secondView")

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func openWindow(sender: NSButton) {
        windowController.showWindow(sender)
    }

}

