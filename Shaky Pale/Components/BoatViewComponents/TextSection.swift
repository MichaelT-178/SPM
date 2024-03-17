//
//  TextSection.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/20/23.
//

import SwiftUI

struct TextSection: View {
    
    let header: String
    let info: String
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .fill(.white)
                .frame(maxWidth: .infinity)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 1) {
                    
                    Text(header)
                        .font(.system(size: 17, weight: .heavy))
                    
                    Text(info)
                        .font(.system(size: 15))
                        .lineSpacing(1.5)
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading, .trailing], 11)
                .padding([.top, .bottom], 8)
                
                Spacer()
            }
        }
        
        
    }
}
