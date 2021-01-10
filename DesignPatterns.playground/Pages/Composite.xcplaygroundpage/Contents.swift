/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
 */
// Composite

import Foundation

// Component
protocol Food {
    func eat()
}

// Leaf
final class Hamburger: Food {
    func eat() {
        print("I'm eating Hamburguer")
    }
}

// Leaf
final class FrenchFries: Food {
    func eat() {
        print("I'm eating French Fries")
    }
}

// Leaf
final class Pizza: Food {
    func eat() {
        print("I'm eating Pizza")
    }
}

// Composite

protocol FoodComposite {
    func add(food: Food)
    func remove(index: Int)
    func get(index: Int) -> Food
}

final class Restaurant: Food {
    private var foods = [Food]()
    
    init(foods: [Food]) {
        self.foods = foods
    }
    
    func eat() {
        for food in foods {
            food.eat()
        }
    }
}

extension Restaurant: FoodComposite {
    
    func add(food: Food) {
        foods.append(food)
    }
    
    func remove(index: Int) {
        foods.remove(at: index)
    }
    
    func get(index: Int) -> Food {
        return foods[index]
    }
}

final class Client {
    private let food: Food
    
    init(food: Food) {
        self.food = food
    }
    
    func eat() {
        food.eat()
    }
}


let restaurant = Restaurant(foods: [FrenchFries(), Hamburger()])

restaurant.add(food: Pizza())

let fries = restaurant.get(index: 0)
fries.eat()

restaurant.remove(index: 0)

let clientOne = Client(food: restaurant)
clientOne.eat()

let clientTwo = Client(food: Pizza())
clientTwo.eat()
