//
//  ARVisionViewController.swift
//  Product
//
//  Created by Rodrigo Leite on 29/08/17.
//  Copyright © 2017 kobe. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ARVisionViewController: UIViewController {

    // MARK: IBOUTLET
    @IBOutlet weak var arsceneView: ARSCNView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arsceneView.delegate = self
        arsceneView.showsStatistics = true
        let scene = SCNScene(named: "art.scnassets/ship.scn")!
        arsceneView.scene = scene
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let configuration = ARWorldTrackingConfiguration()
        arsceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        arsceneView.session.pause()
    }
    
}

extension ARVisionViewController: ARSCNViewDelegate {
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
    
}
