/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
// Bridge

protocol Phone {
    func call()
}

protocol ColoredPhone {
    var phone: Phone { get set}
    
    func call()
}

final class iPhone: Phone {
    func call() {
        print("Calling...")
    }
}

final class Samsung: ColoredPhone {
    var phone: Phone
    
    init(phone: Phone) {
        self.phone = phone
    }
    
    func call() {
        phone.call()
    }
}

final class PinkIPhone: ColoredPhone {
    var phone: Phone
    
    init(phone: Phone) {
        self.phone = phone
    }
    
    func call() {
        phone.call()
    }
}

let iphone = iPhone()
let pinkIphone = PinkIPhone(phone: iphone)
pinkIphone.call()
