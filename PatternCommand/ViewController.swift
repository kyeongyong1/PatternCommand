//
//  ViewController.swift
//  PatternCommand
//
//  Created by Lee on 2017. 8. 10..
//  Copyright © 2017년 LEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let remote = RemoteControl(slotSize: 2)
        let light = Light()
        let lightOn = LightOnCommand(light: light)
        let lightOff = LightOffCommand(light: light)
        
        let stereo = Stereo()
        let stereoOn = StereoOnWithCDCommand(stereo: stereo)
        let stereoOff = StereoOffWithCDCommand(stereo: stereo)
        
        remote.setCommand(slot: 0, onCommand: lightOn, offCommand: lightOff)
        remote.setCommand(slot: 1, onCommand: stereoOn, offCommand: stereoOff)
        
        remote.printAllCommands()
        
        print("\nOn o f 0 slot was pressed")
        remote.pressedOnButton(slot: 0)
        print("\nOff o f 0 slot was pressed")
        remote.preesedOffButton(slot: 0)
        print("\nUndo button was pressed")
        remote.preesedUndoButton()
        print("\nOn o f 1 slot was pressed")
        remote.pressedOnButton(slot: 1)
        print("\nOff o f 1 slot was pressed")
        remote.preesedOffButton(slot: 1)
        print("\nUndo button was pressed")
        remote.preesedUndoButton()
    
    }
}

