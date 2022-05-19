import UIKit

class Person {
    var name = ""
    var age = 0
    func update_name(input:String){
        self.name = input
    }
    
}
var person_obj1 = Person()
person_obj1.age = 25
var person_obj2 = Person()
person_obj2.age = 35

print(person_obj1.age)
print(person_obj2.age)
