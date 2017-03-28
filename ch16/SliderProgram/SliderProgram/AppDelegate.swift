//
//  AppDelegate.swift
//  SliderProgram
//
//  Created by Wallace Wang on 5/6/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var mySlider: NSSlider!
    @IBOutlet weak var sliderValue: NSTextField!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


    @IBAction func getValue(sender: NSSlider) {
        sliderValue.integerValue = mySlider.integerValue
    }
}

