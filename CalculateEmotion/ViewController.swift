//
//  ViewController.swift
//  CalculateEmotion
//
//  Created by Rahman Fadhil on 17/10/20.
//

import UIKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet weak var sceneView: ARSCNView!
    @IBOutlet weak var resultTextView: UITextView!
    
    var faceData: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        guard ARFaceTrackingConfiguration.isSupported else {
            print("Your device doesn't support face tracking!")
            return
        }

        AVCaptureDevice.requestAccess(for: .video) { (granted) in
            if granted {
                DispatchQueue.main.async {
                    let configuration = ARFaceTrackingConfiguration()
                    self.sceneView.session.run(configuration)
                }
            } else {
                print("User did not grant camera permission!")
            }
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        sceneView.session.pause()
    }
    
    // MARK: - ARSCNView Delegate
    
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        guard let device = sceneView.device else { return nil }
        let faceGeometry = ARSCNFaceGeometry(device: device)
        let node = SCNNode(geometry: faceGeometry)
        node.geometry?.firstMaterial?.fillMode = .lines
        return node
    }
    
    func renderer(_ renderer: SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {
        guard let faceAnchor = anchor as? ARFaceAnchor, let faceGeometry = node.geometry as? ARSCNFaceGeometry else {
            return
        }
        
        faceData = FaceData.fromFaceAnchor(faceAnchor).toString()
        
        faceGeometry.update(from: faceAnchor.geometry)
    }

    @IBAction func detectButtonTapped(_ sender: UIButton) {
        resultTextView.text = faceData
        UIPasteboard.general.string = faceData
    }
}

