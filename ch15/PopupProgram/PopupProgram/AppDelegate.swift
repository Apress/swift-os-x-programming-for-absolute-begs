//
//  AppDelegate.swift
//  PopupProgram
//
//  Created by Wallace Wang on 5/4/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var labelChoice: NSTextField!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func showChoice(sender: NSPopUpButton) {
        labelChoice.stringValue = sender.titleOfSelectedItem!
    }

}
