//
//  AppDelegate.swift
//  ComboProgram
//
//  Created by Wallace Wang on 5/11/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var comboBox: NSComboBox!
    @IBOutlet weak var comboResult: NSTextField!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func showResult(sender: NSButton) {
        comboResult.stringValue = comboBox.stringValue
    }

}

