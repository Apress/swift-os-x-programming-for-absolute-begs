//
//  AppDelegate.swift
//  InheritProgram
//
//  Created by Wallace Wang on 4/23/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var ObjectOne: NSTextField!
    @IBOutlet weak var ObjectTwo: NSTextField!


    class one {
        var myColor : NSColor = NSColor.blackColor ()
        func change () {
            myColor = NSColor.redColor()
        }
    }
    
    class two : one {
        var myBackground : NSColor = NSColor.whiteColor()
        override func change() {
            myColor = NSColor.blueColor()
            myBackground = NSColor.greenColor()
        }
    }
    
    var ThingOne = one ()
    var ThingTwo = two()
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

   
    
    @IBAction func changeButton(sender: NSButton) {
        ThingOne.change()
        ThingTwo.change()
        ObjectOne.textColor = ThingOne.myColor
        ObjectTwo.textColor = ThingTwo.myColor
        ObjectTwo.drawsBackground = true
        ObjectTwo.backgroundColor = ThingTwo.myBackground
    }
    

}

