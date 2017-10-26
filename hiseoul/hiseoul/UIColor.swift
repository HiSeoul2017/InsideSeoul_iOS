//
//  UIColor.swift
//  hiseoul
//
//  Created by 박태준 on 2017. 10. 26..
//  Copyright © 2017년 SeoulAppContest. All rights reserved.
//

import UIKit

extension UIColor {
    
    static let mainColor = UIColor(red: 23/255, green: 180/255, blue: 148/255, alpha: 1)
    
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha : a
        )
    }
    convenience init(hex: Int, a: CGFloat = 1.0) {
        self.init(
            red: (hex >> 16) & 0xFF,
            green: (hex >> 8) & 0xFF,
            blue: hex & 0xFF,
            a: a
        )
    }
}
