/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/

// Factory method

import UIKit

protocol Merchant {
    func presentItens()
}

final class Restaurant: Merchant {
    func presentItens() {}
}

final class Groceries: Merchant {
    func presentItens() {}
}

protocol MerchantFactory {
    func make() -> Merchant
}

final class RestaurantFactory: MerchantFactory {
    func make() -> Merchant {
        return Restaurant()
    }
}

final class GroceriesFactory: MerchantFactory {
    func make() -> Merchant {
        return Groceries()
    }
}

final class Catalog {
    private let merchant: Merchant?

    init(merchantFactory: MerchantFactory) {
        self.merchant = merchantFactory.make()
    }

    func present() {
        merchant?.presentItens()
    }
}

let restaurantFactory = RestaurantFactory()
let catalog = Catalog(merchantFactory: restaurantFactory)
catalog.present()
