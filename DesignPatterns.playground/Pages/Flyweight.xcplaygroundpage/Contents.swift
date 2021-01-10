/*:
 [< Previous](@previous)           [Home](Introduction)           [Next >](@next)
*/
// Flyweight

struct Habit {
    var identifier: String
    var daysPerMonth: Int
}

final class HabitTracker {
    var habits: [String: Habit] = [String: Habit]()
    
    func addHabit(identifier: String, daysPerMonth: Int) -> Habit {
        if let habbit = habits[identifier] {
            return habbit
        } else {
            let newHabbit = Habit(identifier: identifier, daysPerMonth: daysPerMonth)
            habits[identifier] = newHabbit
            return newHabbit
        }
    }
}


let habitTracker = HabitTracker()

habitTracker.addHabit(identifier: "read", daysPerMonth: 30)
