//
//  AppDelegate.swift
//  PanelProgram
//
//  Created by Wallace Wang on 5/13/15.
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

    @IBAction func openPanel(sender: NSButton) {
        let myOpen = NSOpenPanel()
        myOpen.canChooseFiles = true
        myOpen.canChooseDirectories = true
        myOpen.allowsMultipleSelection = true

        myOpen.beginWithCompletionHandler { (result) -> Void in
            if result == NSFileHandlingPanelOKButton {
                print (myOpen.URLs)
            }
        }
        
    }

    @IBAction func savePanel(sender: NSButton) {
        let mySave = NSSavePanel()
        mySave.title = "Save a File Here"
        mySave.prompt = "Save Me"
        
        mySave.beginWithCompletionHandler { (result) -> Void in
            if result == NSFileHandlingPanelOKButton {
                print (mySave.URL)
                print (mySave.nameFieldStringValue)
            }
        }
    }
}

