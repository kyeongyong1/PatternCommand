//
//  Invoker.swift
//  PatternCommand
//
//  Created by Lee on 2017. 8. 10..
//  Copyright © 2017년 LEE. All rights reserved.
//

import Foundation

class RemoteControl {
    
    var onCommands = [Command?]()
    var offCommands = [Command?]()
    var undoCommand: Command?
    
    init(slotSize: Int) {
        onCommands = [Command?](repeating: nil, count:slotSize)
        offCommands = [Command?](repeating: nil, count:slotSize)
    }
    
    func setCommand(slot: Int, onCommand: Command, offCommand: Command) {
        onCommands[slot] = onCommand
        offCommands[slot] = offCommand
    }
    
    func pressedOnButton(slot: Int) {
        onCommands[slot]?.execute()
        undoCommand = onCommands[slot]
    }
    
    func preesedOffButton(slot: Int) {
        offCommands[slot]?.execute()
        undoCommand = offCommands[slot]
    }
    
    func preesedUndoButton() {
        undoCommand?.undo()
    }
    
    func printAllCommands() {
        print("--------------onCommands--------------")
        for onCommand in onCommands {
            print(onCommand.self as Any)
        }
        print("--------------offCommands--------------")
        for offCommand in offCommands {
            print(offCommand.self as Any)
        }
    }
}
