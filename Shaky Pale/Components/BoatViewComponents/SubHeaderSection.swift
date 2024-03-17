//
//  SubheaderSection.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/20/23.
//

import SwiftUI

struct SubHeaderSection: View {
    
    let text: String
    
    var body: some View {
        ZStack {
            Capsule()
                .fill(.white)
                .frame(maxWidth: .infinity)
            
            Text(text)
                .font(.system(size: 18, weight: .heavy))
                .frame(maxWidth: .infinity)
                .padding(7)

        }.padding([.leading, .trailing], 3)
    }
}
