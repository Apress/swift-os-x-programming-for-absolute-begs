//
//  AppDelegate.swift
//  ButtonProgram
//
//  Created by Wallace Wang on 5/2/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var changeText: NSTextField!
    @IBOutlet weak var myButton: NSButton!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


    @IBAction func changeTitle(sender: NSButton) {
        //myButton.title = changeText.stringValue
    }
}

