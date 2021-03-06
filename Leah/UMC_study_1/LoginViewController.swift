//
//  LoginViewController.swift
//  UMC_study_1
//
//  Created by 김사랑 on 2022/04/03.
//

import UIKit

class LoginViewController: UIViewController {

    var email = String()
    var password = String()
    
    @IBOutlet weak var registerButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAttribute()
    }
    
    @IBAction func emailTextFieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
        self.email = text
    }
    @IBAction func passwordTextFieldEditingChanged(_ sender: UITextField) {
        let text = sender.text ?? ""
        self.password = text
    }
    @IBAction func loginButtonDidTap(_ sender: UIButton) {
    }
    @IBAction func registerButttonDidTap(_ sender: UIButton) {
        
        // 화면전환
        // 1. 스토리보드를 생성
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        // 2. 뷰컨트롤러를 생성
        let registerViewController = storyboard.instantiateViewController(withIdentifier: "RegisterVC") as! RegisterViewController
        
        // 3. 화면전환 메소드를 이용해서 화면을 전환
   //     self.present(registerViewController, animated: true, completion: nil)
        self.navigationController?.pushViewController(registerViewController, animated: true)
    }

    private func setupAttribute() {
        // registerButton
        let text1 = "계정이 없으신가요?"
        let text2 = "가입하기"
        
        let font1 = UIFont.systemFont(ofSize: 13)
        let font2 = UIFont.boldSystemFont(ofSize: 13)
        
        let color1 = UIColor.darkGray
        let color2 = UIColor.facebookColor
        
        let attributes = generateButtonAttribute(
            self.registerButton,
            texts: text1, text2,
            fonts: font1, font2,
            colors: color1, color2)
        
        self.registerButton.setAttributedTitle(attributes, for: .normal)
    }
}

