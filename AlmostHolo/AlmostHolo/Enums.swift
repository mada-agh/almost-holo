import Foundation
import CoreText
import UIKit
import AVFoundation

enum GeometricTransformationTypes: Int {
  case translation = 0
  case rotation
  case scale
  
  func toString() -> String {
    switch self {
      case .translation:
        return "Translation"
      case .rotation:
        return "Rotation"
      case .scale:
        return "Scale"
    }
  }
}

enum Axes {
  case x, y, z
}

enum GestureType: String {
  case one = "One"
  case two = "Two"
  case three = "Three"
  case thumbUp = "ThumbsUp"
  case thumbDown = "ThumbsDown"
  case pinch = "Pinch"
  case background = "Background"
  case swipeLeft = "Left"
  case swipeRight = "Right"
  case fingerSnap = "FingerSnap"
  case palm = "Palm"
  case nothing = "Nothing"
  
  func getImage() -> UIImage {
    return UIImage(named: self.rawValue) ?? UIImage(named: "One")!
  }
}

enum FlowState: String {
  case view
  case focus
  case edit
  case action
  case notes
}

enum LayerPresenterCase {
  case first
  case last
  case other
}

