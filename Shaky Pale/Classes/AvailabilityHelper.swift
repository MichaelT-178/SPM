//
//  AvailabilityHelper.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/20/23.
//

import SwiftUI

class AvailabilityHelper {
    var date: Date
     
    init (date: Date) {
        self.date = date
    }
    
    func getAvailableTimes() -> [Bool] {
        //Based on time, date, etc.
        //Determine if time is available

        let timeDateFormatter: DateFormatter = {
            let formatter = DateFormatter()
            formatter.dateFormat = "d"
            return formatter
        }()
        
        let nineAvailable = true
        let twoAvailable = true
        let sevenAvailable = Int(timeDateFormatter.string(from: date))! % 2 == 0
        
        return [nineAvailable, twoAvailable, sevenAvailable]
    }
    
    func getDayHasAvailableTimes() -> Bool {
        
        for value in getAvailableTimes() {
            if value {
                return true
            }
        }
        
        return false
    }
    
}
