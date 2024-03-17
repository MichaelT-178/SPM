//
//  DisplayPrices.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/18/23.
//

import SwiftUI

struct DisplayPrices: View {
    
    @State private var showPrices = false
    
    var body: some View {
        VStack {
            DisclosureGroup(isExpanded: $showPrices) {

                HStack {
                    
                    VStack {
                        Text("Weekday")
                            .font(.system(size: 17, weight: .bold))
                            .underline()
                        
                        PriceCell(hours: 2, price: 299)
                        PriceCell(hours: 4, price: 349)
                        PriceCell(hours: 8, price: 549)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Weekend")
                            .font(.system(size: 17, weight: .bold))
                            .underline()
                        
                        PriceCell(hours: 2, price: 349)
                        PriceCell(hours: 4, price: 399)
                        PriceCell(hours: 8, price: 599)
                    }
                }
                .padding(.top, 8)
                
            } label: {
                Text("Show Rental Prices")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.black)
            }
            .padding([.top, .bottom], 6)
            .padding([.leading, .trailing], 10)
            
        }.background(.white)
    }
}

struct PriceCell: View {
    let hours: Int
    let price: Int
    
    var body: some View {
        VStack {
            HStack {
                Text("\(hours) Hours")
                    .bold()
                    .padding(.trailing, 8)
                
                ZStack {
                    Capsule()
                        .frame(width: 68)
                        .foregroundColor(Color.shakyPaleRed)
                    
                    Text("$\(price)")
                        .bold()
                        .padding([.top, .bottom], 2)
                        .foregroundColor(.white)
                }
            }
        }
    }
}
