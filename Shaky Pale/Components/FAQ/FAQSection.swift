//
//  FAQSection.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 7/29/23.
//

import SwiftUI

struct FAQSection: View {
    let header: String
    let questionArray: [Section]
    
    @StateObject private var expansionHandler = ExpansionHandler<Int>()

    let shakyPaleGray = Color(red: 0.129, green: 0.145, blue: 0.161)
    let lightRed = Color(red: 1.000, green: 0.000, blue: 0.000)
    
    var body: some View {
        
        VStack(spacing: 10) {
            
            HStack {
                Text(header)
                    .font(.system(size: 20))
                
                Spacer()
            }.padding(.leading, 17)
            
            
            VStack {
                ForEach(Array(questionArray.enumerated()), id: \.1.id) { (idx, section) in
                    DisclosureGroup(
                        isExpanded: self.expansionHandler.isExpanded(idx),
                        content: {
                            VStack {
                                Text(.init(section.A))
                                    .padding()
                            }
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .border(.red)
                        },
                        label: {
                            Text(section.Q)
                                .padding(.leading, 5)
                        }
                    )
                    .contentShape(Rectangle())
                    .onTapGesture { self.expansionHandler.toggleExpanded(for: idx) }
                    .background(shakyPaleGray)
                    .tint(self.expansionHandler.isExpanded(idx).wrappedValue ? lightRed : Color.white)
                    .frame(maxWidth: .infinity)
                    .padding([.leading, .trailing], 15)
                }
            }
            
        }
    }
}


