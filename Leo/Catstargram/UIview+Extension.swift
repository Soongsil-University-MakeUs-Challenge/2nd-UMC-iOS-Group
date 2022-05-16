//
//  UIview+Extension.swift
//  Catstargram
//
//  Created by 임영준 on 2022/03/31.
//

import UIKit

extension UIView{
    //@IBInspectable -> 항목이 하나 추가되는 것을 의미
    //cornerRadius -> 모서리를 부드럽게 해주는 용도
    @IBInspectable var cornerRadius: CGFloat{
        get {
            //얼마나 둥글게 표현되어있는지 수치를 가져옴
            return layer.cornerRadius
        }
        set {
            //newValue라는 값을 입력받아 값을 세팅함
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
