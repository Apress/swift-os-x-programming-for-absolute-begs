//
//  AppDelegate.swift
//  DictionaryProgram
//
//  Created by Wallace Wang on 4/11/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var addKeyField: NSTextField!
    @IBOutlet weak var addValueField: NSTextField!
    @IBOutlet weak var deleteKeyField: NSTextField!
    @IBOutlet weak var queryCountField: NSTextField!
    @IBOutlet weak var queryKeysField: NSTextField!
    @IBOutlet weak var queryValuesField: NSTextField!

    var myDictionary = [1:"Joe", 2:"Cindy", 3:"Frank"]

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


    @IBAction func addButton(sender: NSButton) {
        myDictionary.updateValue(addValueField.stringValue, forKey: addKeyField.integerValue)
    }
    
    @IBAction func deleteButton(sender: NSButton) {
        myDictionary.removeValueForKey(deleteKeyField.integerValue)
    }
    
    @IBAction func queryButton(sender: NSButton) {
        queryCountField.integerValue = myDictionary.count
        
        var keyList : String = ""
        
        for key in myDictionary.keys {
            keyList = keyList + "\(key)" + " "
        }
        queryKeysField.stringValue = keyList
        
        var valueList : String = ""
        for value in myDictionary.values {
            valueList = valueList + "\(value)" + " "
        }
        queryValuesField.stringValue = valueList

    }
}

