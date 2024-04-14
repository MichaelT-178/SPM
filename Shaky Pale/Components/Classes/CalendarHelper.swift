//
//  CalendarHelper.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/13/23.
//

import Foundation
import SwiftUI

class CalendarHelper {
    
    var currentMonth: Int
    let maxDate: Date
    
    init (currentMonth: Binding<Int>, maxDate: Date) {
        self.currentMonth = currentMonth.wrappedValue
        self.maxDate = maxDate
    }
    
    var formattedDate: (Date) -> String = { date in
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        return dateFormatter.string(from: date)
    }
    
    func getDateHeader(for currentDate: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM YYYY"
        let date = formatter.string(from: currentDate)
        return date
    }
    
    func getColor(for value: DateValue, _ isWeekend: Bool, selectedDate: Date) -> Color {
        
        if formattedDate(value.date) == formattedDate(Date()) {
            return .blue
        }
        
        if getIsWeekend(for: value.date) != isWeekend || value.date <= Date() || value.date > maxDate {
            return .gray
        }
        
        return selectedDate == value.date ? .white : .blue
    }
    
    func getCurrentMonth() -> Date {
        let calendar = Calendar.current
        
        guard let currentMonth = calendar.date(byAdding: .month, value: self.currentMonth, to: Date()) else {
            return Date()
        }
        
        return currentMonth
    }
    
    
    func extractDate() -> [DateValue] {
        let calendar = Calendar.current
        
        let currentMonth = getCurrentMonth()
                
        var days = currentMonth.getAllDates().compactMap { date -> DateValue in
            let day = calendar.component(.day, from: date)
            return DateValue(day: day, date: date)
        }
        
        let firstWeekday = calendar.component(.weekday, from: days.first?.date ?? Date())
        
        for _ in 0..<(firstWeekday - 1) {
            days.insert(DateValue(day: -1, date: Date()), at: 0)
            
        }
        
        return days
    }
    
    func getWeekday(of date: Date) -> String {
        let calendar = Calendar.current
        
        let weekday = calendar.component(.weekday, from: date)
        
        switch weekday {
            case 1:
                return "Sunday"
            case 2:
                return "Monday"
            case 3:
                return "Tuesday"
            case 4:
                return "Wednesday"
            case 5:
                return "Thursday"
            case 6:
                return "Friday"
            case 7:
                return "Saturday"
            default:
                return "Invalid Weekday"
        }
            
    }
    
    func getIsWeekend(for date: Date) -> Bool {
        let calendar = Calendar.current
        
        let weekday = calendar.component(.weekday, from: date)
        
        return weekday == 1 || weekday == 7
    }
    
    func getNextValidDate(isWeekend: Bool) -> Date {
        var initialDate: Date? {
            let calendar = Calendar.current

            guard var modifiedDate = calendar.date(byAdding: .day, value: 1, to: Date()) else {
                return nil
            }

            while getIsWeekend(for: modifiedDate) != isWeekend {
                guard let nextDate = calendar.date(byAdding: .day, value: 1, to: modifiedDate) else {
                    return nil
                }
                modifiedDate = nextDate
            }

            return modifiedDate
        }
        
        if initialDate != nil {
            let calendar = Calendar.current
            
            var components = DateComponents()
            components.year = calendar.component(.year, from: initialDate!)
            components.day = calendar.component(.day, from: initialDate!)
            components.month = calendar.component(.month, from: initialDate!)
            
            return calendar.date(from: components)!
        } else {
            return Date()
        }
        
    }
}


extension Date {
    func getAllDates() -> [Date] {
        let calendar = Calendar.current
        let startDate = calendar.date(from: Calendar.current.dateComponents([.year, .month], from: self))!
        
        let range = calendar.range(of: .day, in: .month, for: startDate)!
        
        return range.compactMap { day -> Date in
            calendar.date(byAdding: .day, value: day - 1, to: startDate)!
        }
        
    }
}

