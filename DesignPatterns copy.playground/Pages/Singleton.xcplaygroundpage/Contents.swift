/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/

// Singleton

final class NotificationManager {
    static let sharedInstance = NotificationManager()
    
    private init() {}
    
    func send() {
        print("Sending notification")
    }
}

let notification = NotificationManager.sharedInstance
notification.send()
