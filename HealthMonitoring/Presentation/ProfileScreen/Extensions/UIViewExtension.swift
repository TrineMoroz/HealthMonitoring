//
//  Extensions.swift
//  HealthMonitoring
//
//  Created by Maxim on 21.07.2022.
//

import Foundation

import UIKit

extension UIView {
    func addBottomBorderLineWithColor(color: UIColor, width: CGFloat) {
        
        let bottomBorderLine = CALayer()
        bottomBorderLine.backgroundColor = color.cgColor
        bottomBorderLine.frame = CGRect(x:0, y: self.frame.size.height - width, width: self.frame.size.width, height: width)
        
        self.layer.addSublayer(bottomBorderLine)
    }
    
}
