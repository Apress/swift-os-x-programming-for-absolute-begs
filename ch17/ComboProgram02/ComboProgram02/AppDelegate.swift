//
//  AppDelegate.swift
//  ComboProgram02
//
//  Created by Wallace Wang on 5/12/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSComboBoxDataSource {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var myCombo: NSComboBox!
    @IBOutlet weak var comboResult: NSTextField!

    let myArray = ["Sandwich", "Chips", "Soda", "Salad"]

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        myCombo.dataSource = self
        myCombo.usesDataSource = true
        
        numberOfItemsInComboBox(myCombo)
        comboBox(myCombo, objectValueForItemAtIndex: 0)
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    func numberOfItemsInComboBox(aComboBox: NSComboBox) -> Int {
        return myArray.count
    }
    
    func comboBox(aComboBox: NSComboBox, objectValueForItemAtIndex index: Int) -> AnyObject {
        return myArray[index]
    }
    
    @IBAction func showResult(sender: NSButton) {
        comboResult.stringValue = myCombo.stringValue
    }

}

