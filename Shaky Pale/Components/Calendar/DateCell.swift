//
//  DateCell.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/13/23.
//

import SwiftUI

struct DateCell: View {
    
    
    let value: DateValue
    let isWeekend: Bool
    let maxDate: Date
    @Binding var selectedDate: Date
    @Binding var currentMonth: Int
    
    var body: some View {
        
        let calendarHelper = CalendarHelper(currentMonth: $currentMonth, maxDate: maxDate)
        let availabilityHelper = AvailabilityHelper(date: value.date)
        
        
        ZStack {
            //(If at right time of week) and (date is after today) and (date is not equal to or less than the max date) and (day has available times)
            if (calendarHelper.getIsWeekend(for: value.date) == isWeekend) && (value.date > Date()) && (value.date <= maxDate) &&
                (availabilityHelper.getDayHasAvailableTimes()) {
                ZStack {
                    Circle()
                        .fill(.blue)
                        .frame(width: 40)
                    
                    Circle()
                        .fill(selectedDate == value.date ? .blue : .white)
                        .frame(width: 36.75)
                }
            }
            
            VStack(spacing: 0) {
                if value.day != -1 {
                    Text("\(value.day)")
                        .font(.title3.bold())
                    
                    if calendarHelper.formattedDate(value.date) == calendarHelper.formattedDate(Date()) {
                        Capsule() //Divider didn't work
                            .fill(.black)
                            .frame(width: 28, height: 1.1)
                            
                      
                    }
                }
            }
            .padding(.vertical, 4)
            .frame(width: 30)
            
        }
    }
}

