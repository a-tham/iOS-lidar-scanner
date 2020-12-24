//
//  ARMeshClassification+Colour.swift
//  lidar_scanner
//
//  Created by Alvin Tham on 25/12/20.
//

import Foundation
import ARKit


extension ARMeshClassification {
    var description: String {
        switch self {
            case .ceiling: return "Ceiling"
            case .door: return "Door"
            case .floor: return "Floor"
            case .seat: return "Seat"
            case .table: return "Table"
            case .wall: return "Wall"
            case .window: return "Window"
            case .none: return "None"
            @unknown default: return "Unknown"
        }
    }
    var color: UIColor {
        switch self {
            case .ceiling: return .red
            case .door: return .green
            case .floor: return .blue
            case .seat: return .cyan
            case .table: return .magenta
            case .wall: return .yellow
            case .window: return .black
            case .none: return .systemOrange
            @unknown default: return .white
        }
    }
}
