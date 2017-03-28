//
//  ViewController.swift
//  StoryProgram
//
//  Created by Wallace Wang on 4/27/15.
//  Copyright (c) 2015 Wallace Wang. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var passedText: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func prepareForSegue(segue: NSStoryboardSegue, sender: AnyObject?) {
        let secondScene = segue.destinationController as! secondView
        secondScene.representedObject = passedText.stringValue
    }
    
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

}

