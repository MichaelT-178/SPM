//
//  PontoonOverlay.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 11/26/22.
//

import SwiftUI

struct PontoonOverlay: View {
    var body: some View {
        ZStack
        {
            
            VStack(alignment: .leading) {
                
                Text("Sunset Rental")
                    .font(.system(size: 22, weight: .heavy))
                    .foregroundColor(.white)
                
                Spacer()
                    .frame(height: 1.65)
                
                HStack
                {
                    Text("Up to 13 Passengers • Captained\nCharters")
                        .multilineTextAlignment(.leading)
                        .font(.system(size: 15, weight: .heavy))
                        .foregroundColor(.white)
                }
                
            }.position(x: 135, y:150)
            
            
            Rectangle()
                .fill(.blue)
                .frame(width: 55, height: 25)
                .overlay(
                    Text("Book")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(1)
                )
                .position(x: 330, y: 160)
        }
    }
}

