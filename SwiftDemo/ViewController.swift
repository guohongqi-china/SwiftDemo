//
//  ViewController.swift
//  SwiftDemo
//
//  Created by guohongqi on 2020/7/13.
//  Copyright © 2020 guohongqi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var item:Array<Any> = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Array 与 struct
//        let student1 = Student.init("小明", age1: 18, parent1: "小明父亲")
//        let student2 = Student.init("小聪", age1: 19, parent1: "小聪父亲")
//        let student3 = Student.init("小蛋", age1: 20, parent1: "小蛋父亲")
//
//        var item = Array<Any>()
//        item.append(student1)
//        item.append(student2)
//        item.append(student3)
//
//        print(item)
//
//        self.item = item
//        changeItems()
//        var demo = self.item[2] as! Student
//        demo.name = "111"
//        changeOnlyOneItem(item:demo)
//        print(item)

        // Array 与 Class
        let student1 = Teacher.init("小明", age1: 18, parent1: "小明父亲")
        let student2 = Teacher.init("小聪", age1: 19, parent1: "小聪父亲")
        let student3 = Teacher.init("小蛋", age1: 20, parent1: "小蛋父亲")

        var item = Array<Any>()
        item.append(student1)
        item.append(student2)
        item.append(student3)
        
        print(item)
        self.item = item
        let demo = self.item[2] as! Teacher
        demo.name = "111"
        print(item)

        
    }
    
    
    // 修改链表
    func changeItems(){
        self.item.append(Student.init("小会", age1: 14, parent1: "小会父亲"))
        print("修改链表结果：\(self.item)")
    }
    
    // 修改链表元素查看结果
    func changeOnlyOneItem(item:Student){
        var demo: Student  = item
        demo.name = "小菜"
        print("修改链表元素结果：\(self.item)")
    }
    

}


// 结构体
struct Student:Codable{
    var name:String
    var age:Int
    var parent:String
    init(_ name1:String, age1:Int, parent1:String) {
        name = name1
        age = age1
        parent = parent1
    }
}

class Teacher: NSObject {
    var name:String = ""
    var age:Int = 0
    var parent:String = ""
    init(_ name1:String, age1:Int, parent1:String) {
        name = name1
        age = age1
        parent = parent1
    }
}
