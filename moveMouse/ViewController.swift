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

      


        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @objc func onWakeNote(note: NSNotification) {
        print("hello, world!")
        CGDisplayMoveCursorToPoint(0, CGPoint(x: 200, y: 200))

     
    }

    @objc func onSleepNote(note: NSNotification) {
        print("hello, world!")
    }

    func fileNotifications() {
        print("notifi")
        NSWorkspace.shared.notificationCenter.addObserver(
            self, selector: #selector(onWakeNote(note:)),
            name: NSWorkspace.didWakeNotification, object: nil)

//        NSWorkspace.shared.notificationCenter.addObserver(
//            self, selector: #selector(onSleepNote(note:)),
//            name: NSWorkspace.willSleepNotification, object: nil)
    }


}

