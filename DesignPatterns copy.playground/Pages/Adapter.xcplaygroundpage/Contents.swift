/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
// Adapter

protocol Charger {
    func charge()
}

final class ChargerAdapter: Charger {
    let phone: Phone
    
    init(phone: Phone) {
        self.phone = phone
    }
    
    func charge() {
        phone.charge()
    }
}

final class Phone {
    func charge () {
        print("Charging")
    }
}

let phone = Phone()
let chargeAdapter = ChargerAdapter(phone: phone)
chargeAdapter.charge()
