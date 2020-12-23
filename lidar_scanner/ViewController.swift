//
//  ViewController.swift
//  lidar_scanner
//
//  Created by Alvin Tham on 21/12/20.
//

import UIKit
import RealityKit
import ARKit
import ModelIO
import MetalKit

class ViewController: UIViewController {
    
    @IBAction func startRecord(_ sender: UIButton) {
    }
    
    @IBOutlet var arView: ARView!
    
    private let session = AVCaptureSession()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let config = ARWorldTrackingConfiguration()
        arView.automaticallyConfigureSession = false
        config.sceneReconstruction = .meshWithClassification
        config.planeDetection = [.horizontal, .vertical]
        arView.debugOptions.insert(.showSceneUnderstanding)
        arView.session.run(config, options: [])
        
        
    }
}

