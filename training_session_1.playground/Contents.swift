import UIKit
/*
class TodoList{
    var list: [String] = []
    func addtolist(input: String){
        self.list.append(input)
    }
    func removefromlis(input: String){
        let string_index = self.list.firstIndex(of: input)
        self.list.remove(at: string_index!)
        
    }
    
    
}
var object1 = TodoList()
object1.addtolist(input: "Cook Food")
object1.addtolist(input: "Water Plants")
print(object1.list)
object1.removefromlis(input: "Water Plants")
print(object1.list)
*/
class Student{
    var name = "Mike"
    var age = 25
    var std = 6
    var selected_course = "Algebra"
}

class School{
    let courses = ["Algebra", "Business Ethics"," Physical Education ","Economics"]
    let student_obj = Student()
    func course_selection(input:String) {
        self.student_obj.selected_course = input
    }
}

var school_obj = School()
school_obj.course_selection(input: "Economics")
print(school_obj.student_obj.selected_course)
