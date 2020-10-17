//
//  FaceData.swift
//  CalculateEmotion
//
//  Created by Rahman Fadhil on 17/10/20.
//

import Foundation
import ARKit

struct FaceData {
    // Left Eye
    var eyeBlinkLeft: CGFloat
    var eyeLookDownLeft: CGFloat
    var eyeLookInLeft: CGFloat
    var eyeLookOutLeft: CGFloat
    var eyeLookUpLeft: CGFloat
    var eyeSquintLeft: CGFloat
    var eyeWideLeft: CGFloat

    // Right Eye
    var eyeBlinkRight: CGFloat
    var eyeLookDownRight: CGFloat
    var eyeLookInRight: CGFloat
    var eyeLookOutRight: CGFloat
    var eyeLookUpRight: CGFloat
    var eyeSquintRight: CGFloat
    var eyeWideRight: CGFloat

    // Mouth and Jaw
    var jawForward: CGFloat
    var jawLeft: CGFloat
    var jawRight: CGFloat
    var jawOpen: CGFloat
    var mouthClose: CGFloat
    var mouthFunnel: CGFloat
    var mouthPucker: CGFloat
    var mouthLeft: CGFloat
    var mouthRight: CGFloat
    var mouthSmileLeft: CGFloat
    var mouthSmileRight: CGFloat
    var mouthFrownLeft: CGFloat
    var mouthFrownRight: CGFloat
    var mouthDimpleLeft: CGFloat
    var mouthDimpleRight: CGFloat
    var mouthStretchLeft: CGFloat
    var mouthStretchRight: CGFloat
    var mouthRollLower: CGFloat
    var mouthRollUpper: CGFloat
    var mouthShrugLower: CGFloat
    var mouthShrugUpper: CGFloat
    var mouthPressLeft: CGFloat
    var mouthPressRight: CGFloat
    var mouthLowerDownLeft: CGFloat
    var mouthLowerDownRight: CGFloat
    var mouthUpperUpLeft: CGFloat
    var mouthUpperUpRight: CGFloat

    // Eyebrows, Cheeks, and Nose
    var browDownLeft: CGFloat
    var browDownRight: CGFloat
    var browInnerUp: CGFloat
    var browOuterUpLeft: CGFloat
    var browOuterUpRight: CGFloat
    var cheekPuff: CGFloat
    var cheekSquintLeft: CGFloat
    var cheekSquintRight: CGFloat
    var noseSneerLeft: CGFloat
    var noseSneerRight: CGFloat
    
    // Tongue
    var tongueOut: CGFloat
    
    static func fromFaceAnchor(_ faceAnchor: ARFaceAnchor) -> FaceData {
        return FaceData(
            eyeBlinkLeft: faceAnchor.blendShapes[.eyeBlinkLeft] as! CGFloat,
            eyeLookDownLeft: faceAnchor.blendShapes[.eyeLookDownLeft] as! CGFloat,
            eyeLookInLeft: faceAnchor.blendShapes[.eyeLookInLeft] as! CGFloat,
            eyeLookOutLeft: faceAnchor.blendShapes[.eyeLookOutLeft] as! CGFloat,
            eyeLookUpLeft: faceAnchor.blendShapes[.eyeLookUpLeft] as! CGFloat,
            eyeSquintLeft: faceAnchor.blendShapes[.eyeSquintLeft] as! CGFloat,
            eyeWideLeft: faceAnchor.blendShapes[.eyeWideLeft] as! CGFloat,
            eyeBlinkRight: faceAnchor.blendShapes[.eyeBlinkRight] as! CGFloat,
            eyeLookDownRight: faceAnchor.blendShapes[.eyeLookDownRight] as! CGFloat,
            eyeLookInRight: faceAnchor.blendShapes[.eyeLookInRight] as! CGFloat,
            eyeLookOutRight: faceAnchor.blendShapes[.eyeLookOutRight] as! CGFloat,
            eyeLookUpRight: faceAnchor.blendShapes[.eyeLookUpRight] as! CGFloat,
            eyeSquintRight: faceAnchor.blendShapes[.eyeSquintRight] as! CGFloat,
            eyeWideRight: faceAnchor.blendShapes[.eyeWideRight] as! CGFloat,
            jawForward: faceAnchor.blendShapes[.jawForward] as! CGFloat,
            jawLeft: faceAnchor.blendShapes[.jawLeft] as! CGFloat,
            jawRight: faceAnchor.blendShapes[.jawRight] as! CGFloat,
            jawOpen: faceAnchor.blendShapes[.jawOpen] as! CGFloat,
            mouthClose: faceAnchor.blendShapes[.mouthClose] as! CGFloat,
            mouthFunnel: faceAnchor.blendShapes[.mouthFunnel] as! CGFloat,
            mouthPucker: faceAnchor.blendShapes[.mouthPucker] as! CGFloat,
            mouthLeft: faceAnchor.blendShapes[.mouthLeft] as! CGFloat,
            mouthRight: faceAnchor.blendShapes[.mouthRight] as! CGFloat,
            mouthSmileLeft: faceAnchor.blendShapes[.mouthSmileLeft] as! CGFloat,
            mouthSmileRight: faceAnchor.blendShapes[.mouthSmileRight] as! CGFloat,
            mouthFrownLeft: faceAnchor.blendShapes[.mouthFrownLeft] as! CGFloat,
            mouthFrownRight: faceAnchor.blendShapes[.mouthFrownRight] as! CGFloat,
            mouthDimpleLeft: faceAnchor.blendShapes[.mouthDimpleLeft] as! CGFloat,
            mouthDimpleRight: faceAnchor.blendShapes[.mouthDimpleRight] as! CGFloat,
            mouthStretchLeft: faceAnchor.blendShapes[.mouthStretchLeft] as! CGFloat,
            mouthStretchRight: faceAnchor.blendShapes[.mouthStretchRight] as! CGFloat,
            mouthRollLower: faceAnchor.blendShapes[.mouthRollLower] as! CGFloat,
            mouthRollUpper: faceAnchor.blendShapes[.mouthRollUpper] as! CGFloat,
            mouthShrugLower: faceAnchor.blendShapes[.mouthShrugLower] as! CGFloat,
            mouthShrugUpper: faceAnchor.blendShapes[.mouthShrugUpper] as! CGFloat,
            mouthPressLeft: faceAnchor.blendShapes[.mouthPressLeft] as! CGFloat,
            mouthPressRight: faceAnchor.blendShapes[.mouthPressRight] as! CGFloat,
            mouthLowerDownLeft: faceAnchor.blendShapes[.mouthLowerDownLeft] as! CGFloat,
            mouthLowerDownRight: faceAnchor.blendShapes[.mouthLowerDownRight] as! CGFloat,
            mouthUpperUpLeft: faceAnchor.blendShapes[.mouthUpperUpLeft] as! CGFloat,
            mouthUpperUpRight: faceAnchor.blendShapes[.mouthUpperUpRight] as! CGFloat,
            browDownLeft: faceAnchor.blendShapes[.browDownLeft] as! CGFloat,
            browDownRight: faceAnchor.blendShapes[.browDownRight] as! CGFloat,
            browInnerUp: faceAnchor.blendShapes[.browInnerUp] as! CGFloat,
            browOuterUpLeft: faceAnchor.blendShapes[.browOuterUpLeft] as! CGFloat,
            browOuterUpRight: faceAnchor.blendShapes[.browOuterUpRight] as! CGFloat,
            cheekPuff: faceAnchor.blendShapes[.cheekPuff] as! CGFloat,
            cheekSquintLeft: faceAnchor.blendShapes[.cheekSquintLeft] as! CGFloat,
            cheekSquintRight: faceAnchor.blendShapes[.cheekSquintRight] as! CGFloat,
            noseSneerLeft: faceAnchor.blendShapes[.noseSneerLeft] as! CGFloat,
            noseSneerRight: faceAnchor.blendShapes[.noseSneerRight] as! CGFloat,
            tongueOut: faceAnchor.blendShapes[.tongueOut] as! CGFloat
        )
    }
    
    func toString() -> String {
        return "eyeBlinkLeft: \(eyeBlinkLeft), eyeLookDownLeft: \(eyeLookDownLeft), eyeLookInLeft: \(eyeLookInLeft), eyeLookOutLeft: \(eyeLookOutLeft), eyeLookUpLeft: \(eyeLookUpLeft), eyeSquintLeft: \(eyeSquintLeft), eyeWideLeft: \(eyeWideLeft), eyeBlinkRight: \(eyeBlinkRight), eyeLookDownRight: \(eyeLookDownRight), eyeLookInRight: \(eyeLookInRight), eyeLookOutRight: \(eyeLookOutRight), eyeLookUpRight: \(eyeLookUpRight), eyeSquintRight: \(eyeSquintRight), eyeWideRight: \(eyeWideRight), jawForward: \(jawForward), jawLeft: \(jawLeft), jawRight: \(jawRight), jawOpen: \(jawOpen), mouthClose: \(mouthClose), mouthFunnel: \(mouthFunnel), mouthPucker: \(mouthPucker), mouthLeft: \(mouthLeft), mouthRight: \(mouthRight), mouthSmileLeft: \(mouthSmileLeft), mouthSmileRight: \(mouthSmileRight), mouthFrownLeft: \(mouthFrownLeft), mouthFrownRight: \(mouthFrownRight), mouthDimpleLeft: \(mouthDimpleLeft), mouthDimpleRight: \(mouthDimpleRight), mouthStretchLeft: \(mouthStretchLeft), mouthStretchRight: \(mouthStretchRight), mouthRollLower: \(mouthRollLower), mouthRollUpper: \(mouthRollUpper), mouthShrugLower: \(mouthShrugLower), mouthShrugUpper: \(mouthShrugUpper), mouthPressLeft: \(mouthPressLeft), mouthPressRight: \(mouthPressRight), mouthLowerDownLeft: \(mouthLowerDownLeft), mouthLowerDownRight: \(mouthLowerDownRight), mouthUpperUpLeft: \(mouthUpperUpLeft), mouthUpperUpRight: \(mouthUpperUpRight), browDownLeft: \(browDownLeft), browDownRight: \(browDownRight), browInnerUp: \(browInnerUp), browOuterUpLeft: \(browOuterUpLeft), browOuterUpRight: \(browOuterUpRight), cheekPuff: \(cheekPuff), cheekSquintLeft: \(cheekSquintLeft), cheekSquintRight: \(cheekSquintRight), noseSneerLeft: \(noseSneerLeft), noseSneerRight: \(noseSneerRight), tongueOut: \(tongueOut)"
    }
}
