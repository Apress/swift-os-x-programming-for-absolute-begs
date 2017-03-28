//
//  AppDelegate.swift
//  EditPopProgram
//
//  Created by Wallace Wang on 5/4/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var myPopUp: NSPopUpButton!
    @IBOutlet weak var newItem: NSTextField!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func addNewItem(sender: NSButton) {
        myPopUp.addItemWithTitle(newItem.stringValue)
    }

    @IBAction func deleteFirstItem(sender: NSButton) {
        myPopUp.removeItemAtIndex(0)
    }
    
    @IBAction func addList(sender: NSButton) {
        myPopUp.removeAllItems()
        myPopUp.addItemsWithTitles(["Cat", "Dog", "Bird", "Fish", "Reptile"])
    }
}

