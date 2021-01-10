/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
// Decorator

protocol Phone {
    func call()
    func unlock()
}

final class IPhone: Phone {
    func unlock() {
        print("Unlock")
    }
    
    func call() {
        print("Calling ...")
    }
}

protocol IPhoneDecorator: Phone {
    var phone: Phone { get set }
}

final class IPhone11: IPhoneDecorator {
    var phone: Phone
    
    init(phone: Phone) {
        self.phone = phone
    }
    
    func unlock() {
         unlockwithFaceId()
    }
    
    func call() {
        phone.call()
    }
    
    func unlockwithFaceId() {
        print("Unlock with face ID")
    }
}

let iphone = IPhone()
let iphone11 = IPhone11(phone: iphone)
iphone11.call()
iphone11.unlockwithFaceId()
