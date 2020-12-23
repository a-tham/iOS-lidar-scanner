//
//  ViewController.swift
//  lidar_scanner
//
//  Created by Alvin Tham on 21/12/20.
//

import UIKit
import RealityKit
import ARKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
//    private let session = AVCaptureSession()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        arView.automaticallyConfigureSession = false
        let config = ARWorldTrackingConfiguration()
        config.sceneReconstruction = .meshWithClassification
        config.planeDetection = [.horizontal, .vertical]
        arView.debugOptions.insert(.showSceneUnderstanding)
        arView.session.run(config, options: [])
        
        
    }
}

