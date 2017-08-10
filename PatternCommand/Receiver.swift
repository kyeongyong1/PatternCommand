//
//  Receiver.swift
//  PatternCommand
//
//  Created by Lee on 2017. 8. 10..
//  Copyright © 2017년 LEE. All rights reserved.
//

import Foundation

class Light {
    
    func on() {
        print("Light On")
    }
    
    func off() {
        print("Light Off")
    }
}

class Stereo {
    
    func on() {
        print("Stereo On")
    }
    
    func off() {
        print("Stereo Off")
    }
    
    func setCD() {
        print("Stereo set CD")
    }
    
    func setVolume(volume: Int) {
        print("Volume is \(volume)")
    }
    
}
