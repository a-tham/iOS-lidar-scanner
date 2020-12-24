//
//  CameraBrain.swift
//  lidar_scanner
//
//  Created by Alvin Tham on 24/12/20.
//

import Foundation
import ARKit
import RealityKit


struct CameraBrain {
    
    func printText(text: String) -> String {
        return text
    }
    
    
    func delayTime() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {print(printText(text: "Hello"))})
    }

}

