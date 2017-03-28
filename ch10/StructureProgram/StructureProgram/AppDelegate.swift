//
//  AppDelegate.swift
//  StructureProgram
//
//  Created by Wallace Wang on 4/13/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var nameField: NSTextField!
    @IBOutlet weak var addressField: NSTextField!
    @IBOutlet weak var phoneField: NSTextField!
    @IBOutlet weak var totalField: NSTextField!

    struct person {
        var name : String = ""
        var address : String = ""
        var phone : String = ""
    }
    
    var employee = person()
    
    var arrayOfStructures = [person] ()
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func viewData(sender: NSButton) {
        let myAlert = NSAlert()
        if arrayOfStructures.isEmpty {
            myAlert.messageText = "Array is empty"
            myAlert.runModal()
        } else {
            var personData = person()
            personData = (arrayOfStructures.removeLast())
            totalField.integerValue = arrayOfStructures.count
            myAlert.messageText = personData.name + "\r\n" + personData.address + "\r\n" + personData.phone
            myAlert.runModal()
        }
    }

    @IBAction func addData(sender: NSButton) {
        employee.name = nameField.stringValue
        employee.address = addressField.stringValue
        employee.phone = phoneField.stringValue
        arrayOfStructures.append(employee)
        totalField.integerValue = arrayOfStructures.count
        
        nameField.stringValue = ""
        addressField.stringValue = ""
        phoneField.stringValue = ""
    }
}

