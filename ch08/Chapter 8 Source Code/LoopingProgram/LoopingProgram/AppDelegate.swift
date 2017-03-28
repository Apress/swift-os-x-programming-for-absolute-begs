//
//  AppDelegate.swift
//  LoopingProgram
//
//  Created by Wallace Wang on 4/10/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain

class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var messageLabel: NSTextField!
    @IBOutlet weak var guessLabel: NSTextField!
    @IBOutlet weak var guessSlider: NSSlider!

    var guessHistory : String
    var guessNumber : Int
    var guessArray = [Int]()
    var arrayTotal : Int
    var randomNumber : Int
    
    override init () {
        self.guessHistory = ""
        self.guessNumber = 0
        self.guessArray = []
        self.arrayTotal = 0
        self.randomNumber = 1 + Int(arc4random_uniform(10))
        // Int(arc4random_uniform(10)) chooses a random number between 0 and 9, so we need to add 1 so it chooses a random number from 1 to 10
    }
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBAction func checkGuess(sender: NSButton) {
        var userGuess : Int = 0
        //var myAlert = NSAlert()
        
        // Get guess from horizontal slider
        userGuess = guessSlider.integerValue
        
        // Store guess in guessArray
        guessArray.append(userGuess)
        
        if userGuess < randomNumber {
            messageLabel.stringValue = "Too Low"
        } else if userGuess > randomNumber {
            messageLabel.stringValue = "Too High"
        } else {
            messageLabel.stringValue = "You got it!"
            
            arrayTotal = guessArray.count
            
            for var i = 0; i < arrayTotal; i++ {
                guessHistory += "Guess \(i+1) = \(guessArray[i])" + "\r\n"
            }
            
            let myAlert = NSAlert()
            myAlert.messageText = guessHistory
            myAlert.runModal()
        }
        guessLabel.stringValue = guessLabel.stringValue + " \(userGuess)"
    }

}

