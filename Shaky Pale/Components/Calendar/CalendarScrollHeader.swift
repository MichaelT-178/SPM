//
//  CalendarScrollHeader.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/14/23.
//

import SwiftUI

struct CalendarScrollHeader: View {
    
    @Binding var currentMonth: Int
    @Binding var currentDate: Date
    let maxDate: Date
    
    var body: some View {
        
        let calendarHelper = CalendarHelper(currentMonth: $currentMonth, maxDate: maxDate)

        HStack {

            Button {
                currentMonth -= 1
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title2)
                    .foregroundColor(calendarHelper.getCurrentMonth() < Date() ? .gray : .blue)
            }
            .disabled(calendarHelper.getCurrentMonth() < Date())
            .padding(.leading, 15)
            
            Spacer()
            
            Text(calendarHelper.getDateHeader(for: calendarHelper.getCurrentMonth()))
                .font(.title)
                .bold()
            
            Spacer()
            
            Button {
                currentMonth += 1
            } label: {
                Image(systemName: "chevron.right")
                    .font(.title2)
                    .foregroundColor(calendarHelper.getCurrentMonth() > maxDate ? .gray : .blue)
            }
            .disabled(calendarHelper.getCurrentMonth() > maxDate)
            .padding(.trailing, 15)
            
        }.padding(.top, 10)
    }
    
}



