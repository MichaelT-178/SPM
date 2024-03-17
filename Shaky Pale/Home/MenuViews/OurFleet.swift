//
//  OurFleet.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 12/27/22.
//

import SwiftUI

struct OurFleet: View {
    var body: some View {
        VStack {
            
            Image("tritoon")
                .resizable()
                .frame(width: 360, height: 225)
                .border(.black, width: 2)
                .offset(y: 17)
            
            
            Text("Luxury Tritoons")
                .font(.system(size: 24, weight: .light))
                .offset(y: 19)
            
            ScrollView(showsIndicators: false) {
                Text("Our 23 foot Sweetwater Tritoons are designed with your comfort in mind. Spend your day on the lake basking in the sun or beneath the shade of the bimini. Equipped with 200 horsepower engines, our boats can keep up with the best of them.")
                    .padding([.leading, .trailing], 10)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 22, weight: .light))
                    .offset(y: 20)
                
                
                let facts = ["Capacity: 14 passengers", "Engine: 200HP", "Integrated bluetooth speakers", "LED lights", "Bimini cover"]
                
                VStack(spacing: 5)
                {
                    ForEach(0...facts.count - 1, id: \.self) { i in
                        Text(facts[i])
                            .font(.system(size: 19, weight: .bold))
                    }
                    
                }.offset(y: 37)
                
            }.offset(y: -8)
        }
        .overlay(
            VStack {
                
                Color.shakyPaleRed
                    .frame(width: 500, height: 165)
                    .position(x: 200, y: -83)
                
                Text("Our Fleet")
                    .font(.system(size: 35, weight: .heavy))
                    .foregroundColor(.white)
                    .position(x: 180, y: -350)
            }
        ).padding()
            .background(.white)
    }
}

struct OurFleet_Previews: PreviewProvider {
    static var previews: some View {
        OurFleet()
    }
}
