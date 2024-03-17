//
//  GiftCardOrderSummary.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/25/23.
//

import SwiftUI

struct GiftCardOrderSummary: View {
    var body: some View {
        VStack(spacing: 8) {
            
            HStack {
                Text("Order Summary")
                    .font(.system(size: 18, weight: .bold))
                Spacer()
            }
            
            //String(format: "%.2f", getSubtotal()))
            
            VStack(spacing: 5) {
                HStack {
                    Text("Subtotal")
                    Text("$349.00")
                    Spacer()
                }
                
                HStack {
                    Text("Fees")
                    Text("$20.94")
                    Spacer()
                }
                
                HStack {
                    Text("Total")
                        .font(.system(size: 17, weight: .semibold))
                    
                    //Text("$\(getTotal(), specifier: "%.2f")")
                    Text("$369.94")
                        .font(.system(size: 17, weight: .semibold))
                    
                    Spacer()
                }
            }
        
            
        }.padding([.top, .bottom], 7)
         .padding(.leading, 25)
         .background(.white)
    }
}

