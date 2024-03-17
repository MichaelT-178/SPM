//
//  SelectButton.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 12/25/22.
//

import SwiftUI

struct SelectButton: View {
    
    @Binding var isSelected: Bool
    @State var amount: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.white)
                .frame(width: 72, height: 33)
                .border(isSelected ? .blue : .gray, width: 1.5)
                .overlay(
                    Text(amount)
                        .foregroundColor(isSelected ? .blue : .gray)
                        .font(.system(size: 16, weight: .medium))
                )
        }
    }
}
