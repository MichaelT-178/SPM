//
//  TimeButton.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/15/23.
//

import SwiftUI

struct TimeButton: View {
    
    let time: String
    let timeOfDay: String
    let isTimeAvailable: Bool
    @Binding var isSelected: Bool
    
    let superLightGray = Color(red: 0.941, green: 0.941, blue: 0.941)
    let lightDarkGray = Color(red: 0.553, green: 0.553, blue: 0.553)
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(timeOfDay)
            
            ZStack {
                Rectangle()
                    .fill(isTimeAvailable ? (isSelected ? .white : .blue) : (superLightGray))
                    .frame(width: 103, height: 40)
                    .border(isTimeAvailable ? .blue : superLightGray, width: 1.5)
                    
                
                HStack(spacing: 0) {
                    if isSelected {
                        Image(systemName: "checkmark")
                    }
                    
                    Text(isTimeAvailable ? time : "All Booked")
                        .foregroundColor(isTimeAvailable ? (isSelected ? .blue : .white) : lightDarkGray)
                        .font(.system(size: 17, weight: .semibold))
                        
                }
            }
        }
    }
    
}


