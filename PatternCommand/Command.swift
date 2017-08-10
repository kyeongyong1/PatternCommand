//
//  Command.swift
//  PatternCommand
//
//  Created by Lee on 2017. 8. 10..
//  Copyright © 2017년 LEE. All rights reserved.
//

import Foundation

protocol Command {
    func execute()
    func undo()
}

class LightOnCommand: Command {
    
    var light: Light?
    
    init(light: Light) {
        self.light = light
    }
    
    func execute() {
        light?.on()
    }
    
    func undo() {
        light?.off()
    }
}

class LightOffCommand: Command {
    
    var light: Light?
    
    init(light: Light) {
        self.light = light
    }
    
    func execute() {
        light?.off()
    }
    
    func undo() {
        light?.on()
    }
}

class StereoOnWithCDCommand: Command {
    
    var stereo: Stereo?
    
    init(stereo: Stereo) {
        self.stereo = stereo
    }
    
    func execute() {
        stereo?.on()
        stereo?.setCD()
        stereo?.setVolume(volume: 11)
    }
    
    func undo() {
        stereo?.off()
    }
    
}

class StereoOffWithCDCommand: Command {
    
    var stereo: Stereo?
    
    init(stereo: Stereo) {
        self.stereo = stereo
    }
    
    func execute() {
        stereo?.off()
    }
    
    func undo() {
        stereo?.on()
        stereo?.setCD()
        stereo?.setVolume(volume: 11)
    }
    
}


