//
//  ViewController.swift
//  Protocol
//
//  Created by csh on 2022/04/11.
//

import UIKit

protocol ChangeLabelDelegate {
    func doChange()
}

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonGoNextVC(_ sender: Any) {
        // if 문과 똑같다는 guard
        guard let nextVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            return
        }
        nextVC.previousViewController = self
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
    }
    
    var delegate : ChangeLabelDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
}

