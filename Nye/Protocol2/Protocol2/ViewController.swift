//
//  ViewController.swift
//  Protocol2
//
//  Created by csh on 2022/04/11.
//

import UIKit

protocol Flyable {
    func fly()
}

protocol Runnable {
    func run()
}

protocol Swimmable{
    func swim()
}

class Person : Flyable, Runnable, Swimmable{
    func run() {
        print("달렸다.")
    }
    
    func fly() {
        print("날았다.")
    }
    
    func swim() {
        print("수영했다.")
    }
}

class Fish : Swimmable{
    func swim() {
        print("헤엄쳤다.")
    }
}

class ViewController: UIViewController {

    let person = Person()
    let salmon = Fish()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        person.fly()
        person.run()
        person.swim()
        salmon.swim()
        
    }


}

