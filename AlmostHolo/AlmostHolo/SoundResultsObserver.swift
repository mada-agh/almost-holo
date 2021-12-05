import Foundation
import SoundAnalysis

class SoundResultsObserver: NSObject, SNResultsObserving {

  var isWaitingForSnap = true
  var delegate : SoundRecognitionDelegate?
  
  func request(_ request: SNRequest, didProduce result: SNResult) {
    
    guard let result = result as? SNClassificationResult else  { return }
    
    guard let classification = result.classifications.first else { return }
    
    //let timeInSeconds = result.timeRange.start.seconds
    
    
    let confidence = classification.confidence * 100.0
    
    if classification.identifier == "Snap" && confidence > 80  {
      if isWaitingForSnap {
        print("Snap was detected -> \(confidence).")
        delegate?.snapDetected()
      }
    }
  }
  
  func request(_ request: SNRequest, didFailWithError error: Error) {
    print("The the analysis failed: \(error.localizedDescription)")
  }
  
  func requestDidComplete(_ request: SNRequest) {
    print("The request completed successfully!")
  }
}
