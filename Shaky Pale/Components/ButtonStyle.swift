//
//  ButtonStyle.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 11/20/22.
//

import SwiftUI

struct ButtonFormat: ButtonStyle {
    
    var diffColor: Color? = nil
    var isDisabled: Bool? = false
    
    func makeBody(configuration: Self.Configuration) -> some View {
        
        configuration.label
            .frame(width: 325, height: 18)
            .font(.system(size: 25))
            .padding()
            .foregroundColor(.white)
            .background(isDisabled ?? false ? .gray : diffColor ?? Color.blue)
            .cornerRadius(35)
            .overlay(RoundedRectangle(cornerRadius: 35)
                .stroke(Color.black, lineWidth: 0.75)
            )
        
    }
}
