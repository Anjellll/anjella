import Foundation

//2 месяц. ДЗ #2
//
//#1. Создать класс DataBase.
//
//Внутри создать  2 массива типа Students и Teachers(создать эти 2 класса, потом использовать)
//
//В каждом из классов, касающихся базы данных должны быть методы для добавление, удаления и считывания учеников/учителей.
//Другими способами ничего изменяться не должно
//Так же добавить методы, позволяющие увидеть полный список(String) учеников и учителей.
//Пример:
//#1 - Имя Фамилия - Возраст - Класс - Средний балл

import Darwin

class Students {
    var name: String = ""
    var surname: String = ""
    var age: Int = 0
    var form: Int = 0
    var id: Int = 0
    
    init(name: String, surname: String, age: Int, form: Int, id: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.form = form
        self.id = id
    }
}

class Teachers {
    var name: String = ""
    var surname: String =  ""
    var age: Int = 0
    var id: Int = 0
    
    init(name: String, surname: String, age: Int, id: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.id = id
    }
}

class DataBase {
    var id: Int = 0
//----------------------------------
    private var studentsArray: [Students] = []
    private var teachersArray: [Teachers] = []
    
    init(id: Int){
        self.id = id
    }
    
    func addStudent(student: Students) {
        studentsArray.append(student)
    }
    func addTeacher(teacher: Teachers) {
        teachersArray.append(teacher)
    }
    func deleteStudent(id: Int) {
        let studentsArrayLength = studentsArray.count
        for student in studentsArray{
            if student.id == id {
        studentsArray.remove(at: id)
                print("Student \(student.name) \(student.surname) was delete from data base")
            }
        }
        if studentsArray.count == studentsArrayLength {
            print("An invalid ID was entered!")
        }
    }
    func deleteTeacher(id: Int) {
        let teachersArrayLength = teachersArray.count
        for teacher in teachersArray {
            if teacher.id == id {
        teachersArray.remove(at: id)
                print("Teacher \(teacher.name) \(teacher.surname) was delete from data base")
            }
        }
        if teachersArray.count == teachersArrayLength {
            print("An invalid ID was entered!")
        }
    }
    func listOfStudents() {
        print("List of students:")
        print("----------")
        for (index,item) in studentsArray.enumerated() {
            print("\(item.name) \(item.surname)\nAge: \(item.age)\nForm: \(item.form)\nID: \(item.id)")
            print("----------")
        }
    }
        func listOfTeachers() {
            print("List of teachers:")
            print("----------")
            for (index,item) in teachersArray.enumerated() {
                print("\(item.name) \(item.surname)\nAge: \(item.age)\nID: \(item.id)")
                print("----------")
            }
        }
//---------------------------------------
    func getArrayStudents(){
        dump(studentsArray)
    }
    func getArrayTeachers(){
        dump(teachersArray)
    }
       
}



var dataBase = DataBase(id: 1138921874)
dataBase.addStudent(student: Students(name: "Adem", surname: "Kattoobekova", age: 14, form: 8, id: 0))
dataBase.addStudent(student: Students(name: "Bael", surname: "Amanbaev", age: 17 , form: 10, id: 1))
dataBase.addStudent(student: Students(name: "Bayana", surname: "Stalbekova", age: 8, form: 2, id: 2))
dataBase.addStudent(student: Students(name: "Saika", surname: "Belekova", age: 15, form: 9, id: 3))
dataBase.addStudent(student: Students(name: "Ariet", surname: "Arstanbekov", age: 18 ,form: 11, id: 4))

dataBase.listOfStudents()
print("")

dataBase.addTeacher(teacher: Teachers(name: "Cholpon", surname: "Belekova", age: 30, id: 0))
dataBase.addTeacher(teacher: Teachers(name: "Janara", surname: "Ulanova", age: 29, id: 1))
dataBase.addTeacher(teacher: Teachers(name: "Daniel", surname: "Kattoobekov", age: 35, id: 2))
dataBase.addTeacher(teacher: Teachers(name: "Aidar", surname: "Nurlanov", age: 25, id: 3))
dataBase.addTeacher(teacher: Teachers(name: "Aizat", surname: "Asanbekova", age: 38, id: 4))

dataBase.listOfTeachers()
print("")


dataBase.deleteStudent(id: 1)
dataBase.listOfStudents()

print("")
dataBase.deleteTeacher(id: 3)
dataBase.listOfTeachers()

//---------------------------------------
dataBase.getArrayStudents()
print("-----")
dataBase.getArrayTeachers()

