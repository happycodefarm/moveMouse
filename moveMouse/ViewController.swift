//
//  ViewController.swift
//  moveMouse
//
//  Created by guillaume on 02/10/2022.
//

import Cocoa
import Foundation

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSWorkspace.shared.notificationCenter.addObserver(
            self, selector: #selector(onWakeNote(note:)),
            name: NSWorkspace.didWakeNotification, object: nil)
        
        NSWorkspace.shared.notificationCenter.addObserver(
            self, selector: #selector(onSleepNote(note:)),
            name: NSWorkspace.willSleepNotification, object: nil)
    }

    override var representedObject: Any? {
        didSet {
        }
    }
    
    @objc func onWakeNote(note: NSNotification) {
        print("Wakeup")
        CGDisplayMoveCursorToPoint(0, CGPoint(x: 200, y: 200))
    }

    @objc func onSleepNote(note: NSNotification) {
        print("Sleeping")
    }

}

