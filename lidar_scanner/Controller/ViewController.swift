//
//  ViewController.swift
//  lidar_scanner
//
//  Created by Alvin Tham on 21/12/20.
//

import UIKit
import RealityKit
import ARKit

let cameraBrain = CameraBrain()

class ViewController: UIViewController,  ARSessionDelegate {
    
    @IBOutlet var arView: ARView!
    let captureSession = AVCaptureSession()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arView.session.delegate = self
        arView.automaticallyConfigureSession = false
        let config = ARWorldTrackingConfiguration()
        config.sceneReconstruction = .mesh
//        config.planeDetection = [.horizontal, .vertical]
        arView.debugOptions.insert(.showSceneUnderstanding)
        arView.session.run(config)
    }
        
        func session(_ session: ARSession, didUpdate frame: ARFrame) {
            guard let arCamera = session.currentFrame?.camera else { return }
                switch arCamera.trackingState {
                    case .notAvailable:
                        print("Tracking: not available: \(arCamera.trackingState)")
                    case .limited(let reason):
                        print("Tracking limited: \(reason)")
                    case .normal:
                        print("tracking normal: \(arCamera.trackingState)")
        }
    }
}



