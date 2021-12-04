import Foundation
import CoreText
import UIKit
import AVFoundation

enum GeometricTransformationTypes: Int {
  case translation = 0
  case rotation
  case scale
}

enum Axes {
  case x, y, z
}

enum MovingState: String {
  case up
  case down
  case nothing
}

enum GestureType: String {
  case one = "One"
  case two = "Two"
  case three = "Three"
  case thumbUp = "ThumbsUp"
  case thumbDown = "ThumbsDown"
  case pinch = "Pinch"
  case background = "Background"
  case swipe = "Swipe"
  case fingerSnap = "FingerSnap"
  case palm = "Palm"
  case nothing = "Nothing"
}

enum FlowState: String {
  case view
  case focus
  case edit
  case action
}
