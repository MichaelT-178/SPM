//
//  CurrencyField.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/1/23.
//

import SwiftUI

struct CurrencyField: View {
    
    var placeHolderText: String?
    @Binding var amount: Double
    @Binding var error: Bool
    @State private var amountVal: String = ""
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(error ? .red : .black)
                    .frame(height: 50)

                TextField(placeHolderText ?? "Enter a number", text: $amountVal)
                    .padding()
                    .font(.system(size: 17))
                    .keyboardType(.decimalPad)
                    .onChange(of: amountVal) { newVal in
                        if let firstChar = newVal.first, firstChar.isNumber || firstChar == "." {

                            if newVal.first == "." {
                                amountVal = "$0" + amountVal
                            } else {
                                amountVal = "$" + amountVal
                            }
                            
                        }

                        //Disables users ability to enter more than 1 decimal
                        let numOfDecimals = amountVal.filter({ $0 == "." }).count
                        if numOfDecimals > 1 {
                            amountVal = String(amountVal.dropLast())
                        }

                        //Disable users ability enter more than 2 decimals
                        if let range = amountVal.firstIndex(of: ".") {
                            let numbersAfterDecimal = amountVal[range...]//.dropLast()

                            if numbersAfterDecimal.count > 3 {
                                amountVal = String(amountVal.dropLast())
                            }
                        }

                        //Prevent invalid characters from being copied and pasted
                        if newVal.count > 0 {
                            if containsInvalidChars(newVal) {
                                //amountVal = String(amountVal.dropLast())
                                amountVal = removeInvalidChars(amountVal)
                            }
                        }
                        
                        amount = Double(amountVal.dropFirst()) ?? 0.00
                    }
                
            }.padding([.leading, .trailing], 25)
            
        }
    }
    
    private func containsInvalidChars(_ input: String) -> Bool {
        let validChars: Set<Character> = Set("$0123456789.")
        let nonValidChars = Set(input).subtracting(validChars)
        return nonValidChars.isEmpty == false
    }
    
    private func removeInvalidChars(_ inputStr: String) -> String {
        let validChars: Set<Character> = Set("$0123456789.")
        
        var validStr = ""
        
        for char in inputStr {
            if validChars.contains(char) {
                validStr += String(char)
            }
        }
        
        return validStr
    }
    
}

