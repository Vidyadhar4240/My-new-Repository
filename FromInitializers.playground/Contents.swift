import UIKit

class Vehicle {
    var noOfWheels = 0
    var description: String {
        return "no of wheels are \(noOfWheels)"
    }
    
}
let vehicle = Vehicle()
vehicle.noOfWheels = 14
print(vehicle.description)
// When the super class has same initializer but has a different value we can use the below initializer type

class bicycle: Vehicle {
    override init() {
        super.init()
        noOfWheels = 2
    }
}
let Bic = bicycle()
Bic.description
//
class car: Vehicle{
    override init() {
        super.init()
        noOfWheels = 4
    }
}
let Car = car()
print(Car.description)
// In the following example we can override the variable of the super class in subclass and retain the variable of the super class

class Hoverboard: Vehicle {
    var color: String
    var height: Double
    init(color: String, height: Double) {
        self.color = color
        self.height = height
    }
    override var description: String {
        return "\(super.description) in a color \(color), of height \(height)"
    }
}
let hover = Hoverboard(color: "Blue", height: 45.6)
hover.noOfWheels = 5
print(hover.description)

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
   convenience init(){
          self.init(name: "Apple")
      }
}
let namedMeat = Food()
namedMeat.name

class RecipeIngredients: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}
let recipe = RecipeIngredients(name: "pasta", quantity: 2)
print("\(recipe.quantity),\(recipe.name)")

class OrderedItems: RecipeIngredients {
    var color: String
    init(name: String, quantity: Int, color: String) {
        self.color = color
        super.init(name: name, quantity: quantity)
    }
    override convenience init(name: String, quantity: Int) {
        self.init(name: name, quantity: 1, color: "Red")
    }
}
let coloredItems = OrderedItems(name: "Bacon", quantity: 3, color: "Red")
print("\(coloredItems.color),\(coloredItems.name),\(coloredItems.quantity),\(coloredItems.self)")

let ineItem = RecipeIngredients()
let oneItem = RecipeIngredients(name: "light weight")
let onesItem = RecipeIngredients(name: "bacon", quantity: 4)
ineItem.quantity
ineItem.name
oneItem.quantity
oneItem.name
onesItem.quantity
onesItem.name

class ShoppingItems: RecipeIngredients {
    var purchaced = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchaced ? "☑️" : "✖️"
        return output
    }
}
let shop = ShoppingItems(name: "AAron", quantity: 3)
shop.purchaced = false
print("\(shop.description)")

var BreakFastList = [
ShoppingItems(),
ShoppingItems(name: "Bun"),
ShoppingItems(name: "Pizza", quantity: 3)
]

BreakFastList[0].name = "banana"
BreakFastList[1].name = "banana"
BreakFastList[0].purchaced = true
BreakFastList[1].purchaced = true
for items in BreakFastList {
    print(items.description)
}

class rightNow {
    var name: Array<Any>
    

    init(name: Array<Any>) {
        self.name = name
    }
    var description: String {
   return "\(name)"
    }
    
}
let above = rightNow(name: ["bacoon", "bat", "ball"])
print(above.description)

// Failable Initializers

    

 


