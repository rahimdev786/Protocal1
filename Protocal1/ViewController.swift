//
//  ViewController.swift
//  Protocal1
//
//  Created by arshad on 4/23/22.
//



// var test:student?   Here referecen only access the properties not Method
// var test = student() here we can add access both properties as well as Properties
// *** Extension protocal can not assign in class or struct. those are acces when we creat object of class or struct

/*
  Advantage:
 —> by using protocol we can achieve inheritance.
 —> struct and class inheritance acceptable in protocol
 —> extension Protocol method can access into class and struct but its access through objects of class or struct
 —> when apply inheritance for class or struct if protocal have a same method name in orther protocal so its ignore method in any one protocal or any extension also..
 
  protocal A {
     func a()
    }
 
 protocal B {
    func a()
   }
 
 extenion A{
 
 func a(){code}
 
 here func a will ignore in any one protocal.
 
 
 --> For MutiInheritance use
 
 protocol A{
     func A()
 }
 
 --> For protocal and delgate
 
 protocol A:AnyObject{
     func A()
 }
 
 */



import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let data = student(data: "Master")
   
        let st = Master()
        st.A()
        st.B()
        st.Student()
        st.Student2()
        st.Student123()
        st.Student3()
        let d =  st.dta
        print(d)
    }
}


class student:A {
    func XXXX() {
        "Prin Bashs"
    }
    
    var Data:String?
    
    var dta:String{
        return "Thanks"
    }
    
    init(data:String?){
        self.Data = data
    }
    
    
    func A() {
        print("Protal A with func a")
    }
    
    
    func c() {
        print("student with func C")
    }
}



struct Master:A,B,C,D{
    func Student123() {
        print("Student S")
    }
    
    
    func Student3() {
        print("Same Data Name")
    }
    
    func Student() {
        print("Protocal B and student Data Haooens")
    }
    
    
    var dta:String{
        return "Thanks"
    }
    func A() {
        print("Access by Struct")
    }
}
