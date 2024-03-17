//
//  TimeSelectionButtons.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/15/23.
//

import SwiftUI

struct TimeSelectionButtons: View {
    
    let date: Date
    let numOfHours: Int
    @Binding var nineSelected: Bool
    @Binding var twoSelected: Bool
    @Binding var sevenSelected: Bool
    
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "E, MMM d, yyyy"
        return formatter
    }()
    
    var body: some View {
        
        let helper = AvailabilityHelper(date: date)
        
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                
                Text("Available on \(dateFormatter.string(from: date))")
                    .font(.system(size: 18, weight: .bold))
            
                Text("You can schedule an appointment between 2 days and 120 days ahead of time. Time zone: Central Time Zone (CDT)")
                    .foregroundColor(.gray)
                    .font(.system(size: 18))
                
                VStack {
                    TimeButton(time: "9:00 am", timeOfDay: "Morning", isTimeAvailable: helper.getAvailableTimes()[0], isSelected: $nineSelected)
                        .onTapGesture {
                            if helper.getAvailableTimes()[0] {
                                nineSelected.toggle()
                                if (nineSelected) { twoSelected = false; sevenSelected = false }
                            }
                        }
                    
                    TimeButton(time: "2:00 pm", timeOfDay: "Afternoon", isTimeAvailable: helper.getAvailableTimes()[1], isSelected: $twoSelected)
                        .onTapGesture {
                            if helper.getAvailableTimes()[1] {
                                twoSelected.toggle()
                                if (twoSelected) { nineSelected = false; sevenSelected = false }
                            }
                        }
                    
                    
                    TimeButton(time: "7:00 pm", timeOfDay: "Evening", isTimeAvailable: helper.getAvailableTimes()[2], isSelected: $sevenSelected)
                        .onTapGesture {
                            if helper.getAvailableTimes()[2] {
                                sevenSelected.toggle()
                                if (sevenSelected) { nineSelected = false; twoSelected = false; }
                            }
                        }
                }
            }
            
            Spacer()
        }
        .padding([.leading, .trailing], 16)
        .padding([.top, .bottom], 10)
        .background(.white)
    }
}




