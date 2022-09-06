import Foundation

class FeedModel {
    
    private let secretWord = "Hypster"
    
    func check(_ word: String) -> Bool {
        word == secretWord
    }
    
}
