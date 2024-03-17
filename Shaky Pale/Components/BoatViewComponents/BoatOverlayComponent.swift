//
//  OverlayViewBuilder.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 11/26/22.
//

import SwiftUI

struct BoatOverlay: View {
    
    let boatCard: BoatCard
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 0)
        {
            
            VStack(alignment: .leading)
            {
                Text(boatCard.title)
                    .font(.system(size: 22, weight: .bold))
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                
                Text(boatCard.subtitle)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(.white)
                    .shadow(radius: 10)
                
            }.padding(.leading, 12)
            
            
            Spacer()
            
            
            Text(boatCard.blueTag)
                .font(.system(size: 18, weight: .semibold))
                .frame(width: 55, height: 25)
                .foregroundColor(.white)
                .background(.blue)
                .shadow(radius: 10)
                .padding(.bottom, 8.5)
                .padding(.trailing, 11)
            
            
        }.padding(.bottom, 17)
    }
}
