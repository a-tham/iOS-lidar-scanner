//
//  ViewController.swift
//  lidar_scanner
//
//  Created by Alvin Tham on 21/12/20.
//

import UIKit
import RealityKit
import ARKit
import ReplayKit

class ViewController: UIViewController, ARSessionDelegate, RPPreviewViewControllerDelegate {
    
    @IBOutlet var arView: ARView!
//    let captureSession = AVCaptureSession()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arView.session.delegate = self
        
        arView.automaticallyConfigureSession = false
        let config = ARWorldTrackingConfiguration()
        config.sceneReconstruction = .meshWithClassification
        config.planeDetection = [.horizontal, .vertical]
        arView.debugOptions.insert(.showSceneUnderstanding)
//        arView.debugOptions.insert(.showAnchorGeometry)
        arView.session.run(config, options: [])
    }
        
        func session(_ session: ARSession, didUpdate frame: ARFrame) {
            guard let arCamera = session.currentFrame?.camera else { return }
                switch arCamera.trackingState {
                    case .notAvailable:
                        print("Tracking is not available: \(arCamera.trackingState)")
                    case .limited(let reason):
                        print("Tracking is currently limited: \(reason)")
                    case .normal:
                        print("tracking is normal: \(arCamera.trackingState)")
                }

        }

}





