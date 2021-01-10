/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
// Facade

protocol OrderFacade {
    var cart: Cart { get set }
    var payment: Payment { get set }
}

final class Cart {
    func add() {
        print("Product added to cart")
    }
}

final class Payment {
    func choose() {
        print("Payment chosen")
    }
    
    func pay() {
        print("Payment made")
    }
}

final class Order: OrderFacade {
    var cart: Cart
    var payment: Payment
    
    init(cart: Cart, payment: Payment) {
        self.cart = cart
        self.payment = payment
    }
    
    func process() {
        cart.add()
        payment.choose()
        payment.pay()
    }
}

let cart = Cart()
let payment = Payment()

let order = Order(cart: cart, payment: payment)
order.process()
