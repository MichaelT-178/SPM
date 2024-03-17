//
//  OrderSummary.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/19/23.
//

import SwiftUI

struct OrderSummary: View {
    
    let selectedDate: Date
    let numOfHours: Int
    let addOnPrice: Double
    let isWeekend: Bool
    let morningSelected: Bool
    let afternoonSelected: Bool
    let eveningSelected: Bool
    
    var body: some View {
        HStack {
            VStack(spacing: 10) {
                
                HStack {
                    Text("Order Summary")
                        .font(.system(size: 21, weight: .bold))
                        .padding(.bottom, 7)
                        .padding(.top, 4)
                    
                    Spacer()
                }
                

                OrderSummaryCell(text: "Time Of Week", value: isWeekend ? "Weekend" : "Weekday")
                
                
                let orderDateFormatter: DateFormatter = {
                    let formatter = DateFormatter()
                    formatter.dateFormat = "MMM d, yyyy"
                    return formatter
                }()
                
                
                OrderSummaryCell(text: "Date Of Trip", value: orderDateFormatter.string(from: selectedDate))
                                    
                HStack {
                    Text("Selected Time")
                        .font(.system(size: 18))
                    
                    Spacer()
                    
                    Text(getTimeString())
                        .font(.system(size: 18))
                        .foregroundColor(getTimeString() == "None" ? .red : .black)
                }
                

                OrderSummaryCell(text: "Trip Duration", value: "\(numOfHours) Hours")
                OrderSummaryCell(text: "Subtotal", value: String(format: "%.2f", getSubtotal()))
                OrderSummaryCell(text: "Estimated Tax", value: String(format: "%.2f", getTax()))
                
                Divider()
                    .background(.black)
                    .frame(maxWidth: .infinity)
                
                HStack {
                    Text("Total")
                        .font(.system(size: 19, weight: .bold))
                    
                    Spacer()
                    
                    Text("$\(getTotal(), specifier: "%.2f")")
                        .font(.system(size: 18, weight: .bold))
                }
                .padding(.top, 3)
            }
            
            
        }.padding([.top, .bottom], 5)
         .padding([.leading, .trailing], 12)
         .background(.white)
    }
    
    func getSubtotal() -> Double {
        var total: Double = 0.00
        
        if isWeekend {
            switch numOfHours {
                case 2:
                    total = 349.00
                case 4:
                    total = 399.00
                case 8:
                    total = 599.00
                default:
                    total = 0.00
            }
        } else {
            switch numOfHours {
                case 2:
                    total = 299.00
                case 4:
                    total = 349.00
                case 8:
                    total = 549.00
                default:
                    total = 0.00
            }
        }
        
        return total + addOnPrice
    }
    
    func getTax() -> Double {
        return getSubtotal() * 0.07
    }
    
    
    func getTotal() -> Double {
        return getSubtotal() + getTax()
    }
    
    func getTimeString() -> String {
        if morningSelected {
            return "Morning"
        } else if afternoonSelected {
            return "Afternoon"
        } else if eveningSelected {
            return "Evening"
        } else {
            return "None"
        }
    }
}



