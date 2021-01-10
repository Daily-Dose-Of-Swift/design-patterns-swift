/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/

// Prototype

protocol SoftwareDeveloper {
    var languages: [String] { get set }
}

struct Developer: SoftwareDeveloper {
    var languages: [String]
        
    func clone() -> Self {
        return .init(languages: languages)
    }
}

let developer = Developer(languages: ["swift", "objective-c", "kotlin"])

let prototype = developer.clone()
prototype.languages

