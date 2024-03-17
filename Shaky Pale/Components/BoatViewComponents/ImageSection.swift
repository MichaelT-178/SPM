//
//  ImageSection.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/20/23.
//

import SwiftUI

struct ImageSection: View {
    
    let name: String
    
    var body: some View {
        Image(name)
            .resizable()
            .frame(width: UIScreen.main.bounds.width, height: 172)
    }
}
