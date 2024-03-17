//
//  CalendarView.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/13/23.
//

import SwiftUI

struct CustomDatePicker: View {
    
    @Binding var currentDate: Date
    @Binding var selectedDate: Date
    @Binding var isWeekend: Bool
    
    @State private var currentMonth: Int = 0
    
    var maxDate: Date {
        let calendar = Calendar.current
        let today = Date()
        let maxDaysAway = calendar.date(byAdding: .day, value: 120, to: today)!
        return maxDaysAway
    }
    
    var body: some View {
        
        let calendarHelper = CalendarHelper(currentMonth: $currentMonth, maxDate: maxDate)
        
        
        VStack {
            
            let days: [String] = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
            
            CalendarScrollHeader(currentMonth: $currentMonth,
                                 currentDate: $currentDate,
                                 maxDate: maxDate)
            
            Divider()
                .background(.black)
                .frame(maxWidth: .infinity)
                .padding([.leading, .trailing], 10)
            
            HStack(spacing: 0) {
                ForEach(days, id: \.self) { day in
                    Text(day)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                }
            }
            
            
            let columns = Array(repeating: GridItem(.flexible()), count: 7)

            LazyVGrid(columns: columns, spacing: 15) {
                ForEach(calendarHelper.extractDate()) { value in
                    
                    DateCell(value: value, isWeekend: isWeekend, maxDate: maxDate, selectedDate: $selectedDate, currentMonth: $currentMonth)
                        .onTapGesture {
                            
                            if calendarHelper.getIsWeekend(for: value.date) == isWeekend && value.date > Date() {
                                selectedDate = value.date
                                //print(selectedDate)
                            }
                        }
                        .foregroundColor(calendarHelper.getColor(for: value, isWeekend, selectedDate: selectedDate))
                }
            }.padding(.bottom, 20)
            
            
        }.background(.white)
         .onChange(of: currentMonth) { newVal in
             currentDate = calendarHelper.getCurrentMonth()
        }
         .onChange(of: isWeekend) { _ in
             selectedDate = calendarHelper.getNextValidDate(isWeekend: isWeekend)
         }
         .onAppear {
             selectedDate = calendarHelper.getNextValidDate(isWeekend: isWeekend)
         }
        
    }
}
