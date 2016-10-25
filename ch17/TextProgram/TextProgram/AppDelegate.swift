//
//  AppDelegate.swift
//  TextProgram
//
//  Created by Wallace Wang on 5/8/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSTextDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var searchBox: NSSearchField!
    @IBOutlet weak var historyBox: NSTextField!

    @IBOutlet weak var tokenBox: NSTokenField!
    @IBOutlet weak var tokenResult: NSTextField!
    
    
    @IBOutlet weak var secureBox: NSSecureTextField!
    @IBOutlet weak var secureResults: NSTextField!
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func showHistory(sender: NSButton) {
        historyBox.stringValue = String(stringInterpolationSegment: searchBox.recentSearches)
    }

    @IBAction func showToken(sender: NSButton) {
        tokenResult.stringValue = tokenBox.stringValue
    }
    
    @IBAction func showSecret(sender: NSButton) {
        secureResults.stringValue = secureBox.stringValue
    }
}

