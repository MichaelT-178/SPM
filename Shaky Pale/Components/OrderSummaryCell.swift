//
//  OrderSummaryCell.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/20/23.
//

import SwiftUI

struct OrderSummaryCell: View {
    let text: String
    let value: String
    
    var body: some View {
        HStack {
            Text(text)
                .font(.system(size: 18))
            
            Spacer()
            
            Text(.init(value))
                .font(.system(size: 18))
        }
    }
}
