//
//  AppDelegate.swift
//  DelegateProgram
//
//  Created by Wallace Wang on 4/22/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        println ("This line should print after the program runs")
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        println ("This line should print before your program stops")
    }


}

