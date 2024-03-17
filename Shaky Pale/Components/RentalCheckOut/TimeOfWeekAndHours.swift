//
//  TimeOfWeekAndHours.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/15/23.
//

import SwiftUI

struct TimeOfWeekAndHours: View {
    
    @Binding var isWeekend: Bool
    @Binding var selectedDate: Date
    @Binding var numOfHours: Int

    @State private var showPrices = false
    
    var body: some View {
        VStack(spacing: 0) {

            Divider()
                .background(.black)
                .frame(maxWidth: .infinity)
                .padding([.leading, .trailing], 10)
            
            HStack {
                
                Text("Time Of Week")
                    .font(.system(size: 18, weight: .bold))
                
                Spacer()
                
                Button {
                    isWeekend.toggle()
                    selectedDate = Date()
                } label: {
                    ZStack {
                        Capsule()
                            .fill(.blue)
                            .frame(width: 90, height: 30)
                        
                        Text(isWeekend ? "Weekend" : "Weekday")
                            .foregroundColor(.white)
                    }
                }
                
            }.padding([.top, .bottom], 6)
             .padding([.leading, .trailing], 10)
    
            Divider()
                .background(.black)
                .frame(maxWidth: .infinity)
                .padding([.leading, .trailing], 10)
            
            HStack {
                Text("Number Of Hours")
                    .font(.system(size: 18, weight: .bold))
                
                Spacer()
        
                Menu {
                    Button("2 Hours (Sunset)") {
                        numOfHours = 2
                    }
                    
                    Button("4 Hours") {
                        numOfHours = 4
                    }
                    
                    Button("8 Hours") {
                        numOfHours = 8
                    }
                    
                } label: {
                    ZStack {
                        Capsule()
                            .fill(.blue)
                            .frame(width: 90, height: 30)
                        
                        Text("\(numOfHours) Hours")
                            .foregroundColor(.white)
                    }
                }
                
            }.padding([.top, .bottom], 6)
             .padding([.leading, .trailing], 10)

        }.background(.white)
    }
}
