//
//  RandomColor.swift
//  TestsDemo_RandomColor
//
//  Created by Jorge de Carvalho on 28/12/21.
//

import UIKit

struct ColorRandomize {
    
    static func random() -> UIColor {
        let maximum: CGFloat = 255
        let red = CGFloat.random(in: CGFloat(0)..<maximum)
        let green = CGFloat.random(in: CGFloat(0)..<maximum)
        let blue = CGFloat.random(in: CGFloat(0)..<maximum)
        
        return UIColor(red: red/maximum, green: green/maximum, blue: blue/maximum, alpha: 1)
        
    }
}
