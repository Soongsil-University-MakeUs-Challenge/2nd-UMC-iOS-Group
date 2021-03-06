//
//  ViewController.swift
//  Protocol2
//
//  Created by 임영준 on 2022/04/10.
//

import UIKit

//클래스 바깥에서 프로토콜 정의
protocol Flyable {
    func fly()
}


protocol Runnable {
    func run()
}
class Person : Flyable, Runnable {
    func run() {
        print("달렸다.")
    }
    
    func fly() {
        print("날았다.")
    }
    
    
}

class ViewController: UIViewController {
    
    let person = Person()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        person.fly()
        person.run()
    }


}

