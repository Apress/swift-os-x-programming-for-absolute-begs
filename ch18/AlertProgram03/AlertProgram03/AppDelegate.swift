//
//  AppDelegate.swift
//  AlertProgram03
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
   
    @IBAction func showAlert(sender: NSButton) {
        let myAlert = NSAlert()
        myAlert.messageText = "Warning!"
        myAlert.informativeText = "Zombies approaching"
        myAlert.alertStyle = NSAlertStyle.CriticalAlertStyle
        myAlert.showsSuppressionButton = true
        myAlert.suppressionButton?.title = "Stop scaring me"
            
        myAlert.addButtonWithTitle("Ignore it")
        myAlert.addButtonWithTitle("Run")
        myAlert.addButtonWithTitle("Panic")
        myAlert.addButtonWithTitle("Do nothing")
        
        // Commented code below shows the alternate way to use closures
        
//        let myCode = { (choice:NSModalResponse) -> Void in
//            switch choice {
//            case NSAlertFirstButtonReturn:
//                println ("User clicked Ignore it")
//            case NSAlertSecondButtonReturn:
//                println ("User clicked Run")
//            case NSAlertThirdButtonReturn:
//                println ("User clicked Panic")
//            case NSAlertThirdButtonReturn + 1:
//                println ("User clicked Do nothing")
//            default: break
//            }
//            
//            if myAlert.suppressionButton!.state == 1 {
//                println ("Checked")
//            } else {
//                println ("Not checked")
//            }
//        }
        //myAlert.beginSheetModalForWindow(window, completionHandler: myCode)
        
        myAlert.beginSheetModalForWindow(window, completionHandler: { (choice:NSModalResponse) -> Void in
            switch choice {
            case NSAlertFirstButtonReturn:
                print ("User clicked Ignore it")
            case NSAlertSecondButtonReturn:
                print ("User clicked Run")
            case NSAlertThirdButtonReturn:
                print ("User clicked Panic")
            case NSAlertThirdButtonReturn + 1:
                print ("User clicked Do nothing")
            default: break
            }
            
            if myAlert.suppressionButton!.state == 1 {
                print ("Checked")
            } else {
                print ("Not checked")
            }
        })
    }

}

