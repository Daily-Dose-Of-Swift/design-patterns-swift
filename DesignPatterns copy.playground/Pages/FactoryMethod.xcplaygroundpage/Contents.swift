/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/

// Factory method
import UIKit

protocol Phone {
    var camera: String { get }
    
    func call()
    func takePictures()
}

final class iPhone: Phone {
    var camera: String = "camera"
    
    func call() {
        print("I'm calling fom iPhone.")
    }
    
    func takePictures() {
        print("I'm taking pictures with the iPhone \(camera).")
    }
}

final class Samsung: Phone {
    var camera: String = "camera"
    
    func call() {
        print("I'm calling from Samsung.")
    }
    
    func takePictures() {
        print("I'm taking pictures with the Samsung \(camera).")
    }
}

protocol PhoneFactory {
    func make() -> Phone
}

final class iPhoneFactory: PhoneFactory {
    func make() -> Phone {
        return iPhone()
    }
    
}

final class SamsungFactory: PhoneFactory {
    func make() -> Phone {
        return Samsung()
    }
}

let iphoneFactory = iPhoneFactory()
let iphone = iphoneFactory.make()
iphone.call()


// And we can add a new type without changing the original code base.

final class Xiaomi: Phone {
    var camera: String = "camera"
    
    func call() {
        print("I'm calling from Xiaomi.")
    }
    
    func takePictures() {
        print("I'm taking pictures with the Xiaomi \(camera).")
    }
}

final class XiaomiFactory: PhoneFactory {
    func make() -> Phone {
        return Xiaomi()
    }
}

let xiaomiFactory = XiaomiFactory()
let xiaomi = xiaomiFactory.make()
xiaomi.takePictures()

let actualviewController = UIViewController()
let viewController = UIViewController()
actualviewController.present(viewController, animated: true, completion: nil)
actualviewController.presentedViewController

let imageTest = UIImage(named: "fhha")

let string = NSAttributedString()


