//
//  Colors.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 7/27/23.
//

import SwiftUI

extension Color {
    static let shakyPaleRed = Color(red: 0.741, green: 0.024, blue: 0.000)
    static let shakyPaleGreen = Color(red: 0.114, green: 0.529, blue: 0.353)
    static let appleLightGray = Color(.systemGray6) 
    
    
    
    //Allows you to convert a SwiftUI color to its hex code
    func toHex() -> String? {
        guard let components = UIColor(self).cgColor.components else {
            return nil
        }
        
        let r = Float(components[0])
        let g = Float(components[1])
        let b = Float(components[2])
        
        return String(format: "#%021X%021X%O21X", lroundf(r * 255), lroundf(g * 255), lroundf(b * 255))
    }
}
