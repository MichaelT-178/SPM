//
//  Reviews.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 12/27/22.
//

import SwiftUI

struct Reviews: View {

    var body: some View {
        
        NavigationView {
            GeometryReader  { g in
                
                VStack() //spacing: ????
                {
                    VStack
                    {
                        Text("Reserve a Rental")
                            .font(.system(size: 36, weight: .heavy))
                            .foregroundColor(.white)
                            .padding(.trailing, 62) //trailing num????
                            .padding(.top, g.size.height * 0.064)
                        
                    }.frame(width: g.size.width, height: g.size.height * 0.13)
                     .background(Color.shakyPaleRed)
                    
                    VStack {
                        
                    }
                    
                } //TopMost VStack Ends
            }.ignoresSafeArea() // GeometryReader ends
        }//.navigationBarHidden(true)
        // NavigationView Ends
    }
}

struct Reviews_Previews: PreviewProvider {
    static var previews: some View {
        Reviews()
    }
}
