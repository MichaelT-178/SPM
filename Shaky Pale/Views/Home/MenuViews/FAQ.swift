//
//  FAQ.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 11/12/22.
//

import SwiftUI

struct FAQ: View {
    
    let appleGray = Color(red: 0.933, green: 0.933, blue: 0.933)
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {

                Text("HEADER GOES HERE")
                    .frame(maxWidth: .infinity)
                    .background(Color.shakyPaleRed)
                
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 22) {
                        FAQSection(header: "Rental Questions", questionArray: rental)
                        FAQSection(header: "Pricing Questions", questionArray: pricing)
                    }
                    .padding(.top, 12)
                    
                    Text("\n\n\n\n")
                }
                
            }.background(appleGray)
        }
    }
}

struct FAQ_Previews: PreviewProvider {
    static var previews: some View {
        FAQ()
    }
}
