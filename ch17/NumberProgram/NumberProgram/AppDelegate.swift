//
//  AppDelegate.swift
//  NumberProgram
//
//  Created by Wallace Wang on 5/11/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var popUpChoice: NSPopUpButton!
    @IBOutlet weak var textBox: NSTextField!
    @IBOutlet weak var labelResult: NSTextField!
    @IBOutlet weak var numberFormat: NSNumberFormatter!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


    @IBAction func showResults(sender: NSButton) {
        if popUpChoice.titleOfSelectedItem! == "None" {
            numberFormat.numberStyle = NSNumberFormatterStyle.NoStyle
        } else if popUpChoice.titleOfSelectedItem! == "Decimal" {
            numberFormat.numberStyle = NSNumberFormatterStyle.DecimalStyle
        } else if popUpChoice.titleOfSelectedItem! == "Currency" {
            numberFormat.numberStyle = NSNumberFormatterStyle.CurrencyStyle
        } else if popUpChoice.titleOfSelectedItem! == "Percent" {
            numberFormat.numberStyle = NSNumberFormatterStyle.PercentStyle
        } else if popUpChoice.titleOfSelectedItem! == "Scientific" {
            numberFormat.numberStyle = NSNumberFormatterStyle.ScientificStyle
        } else if popUpChoice.titleOfSelectedItem! == "Spell Out" {
            numberFormat.numberStyle = NSNumberFormatterStyle.SpellOutStyle
        }
        
        labelResult.stringValue = String(stringInterpolationSegment: textBox.doubleValue)
    }
}

