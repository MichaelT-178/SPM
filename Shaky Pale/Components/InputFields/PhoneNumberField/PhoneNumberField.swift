//
//  StyleField.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/9/23.
//

import SwiftUI

struct PhoneNumberField: View {
    @Binding var phoneNumber: String
    
    @State private var code = PhoneNumberCode(Country: "United States", Prefix: "1", Mask: "(000) 000-0000", Flag: "🇺🇸", scrollId: 1)
    @State private var isSheetShowing = false
    @State private var selectedItemId: Int = 1
    
    @State private var prevTextLength = 0
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10).stroke()
                .frame(height: 50)
            
            HStack(spacing: 0) {
                
                Button {
                    isSheetShowing.toggle()
                } label: {
                    Text("\(code.Flag) +\(code.Prefix)")
                        .frame(width: 70, height: 50)
                        .background(Color.secondary.opacity(0.2))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                }
                    
                TextField(code.Mask, text: $phoneNumber)
                    .padding()
                    .font(.system(size: 17))
                    .keyboardType(.numberPad)
                    .onChange(of: phoneNumber, perform: { newVal in
                        let theMaskArr: [Character] = code.Mask.map { $0 } //Swift equivalent to split method
                        
                        //As you increase the size of the inputText string iterate over the array using inputText count
                        if phoneNumber.count < theMaskArr.count {
                            if newVal.count > prevTextLength {  //Deleting text wont do anything weird with masking
                                print(theMaskArr)
                                print(phoneNumber.count - 1)
                                let charToInsert = theMaskArr[phoneNumber.count - 1]
                                
                                if charToInsert != "0" {
                                    phoneNumber.insert(charToInsert, at: phoneNumber.index(before: phoneNumber.endIndex))
                                }
                            }
                        }
                        
                        //Disable typing if max characters are already entered in phone number string.
                        if newVal.count > theMaskArr.count {
                            phoneNumber = String(newVal.dropLast())
                        }
                        
                        //Disables users ability to copy and paste non-integer characters
                        if newVal.count > 0 {
                            if containsInvalidChars(newVal) {
                                phoneNumber = removeInvalidChars(phoneNumber)
                            }
                        }
                        
                        
                        prevTextLength =  newVal.count
                    })
                
            }.onChange(of: code.Mask) { _ in
                phoneNumber = ""
                prevTextLength = 0
            }
            
        }.padding([.leading, .trailing], 25)
        .sheet(isPresented: $isSheetShowing) {
            CountrySearchSheet(selectedCode: $code, isShowing: $isSheetShowing, selectedItemId: $selectedItemId)
        }
    }
    
    private func containsInvalidChars(_ input: String) -> Bool {
        var validChars: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        
        if code.Mask.contains("(") {
            validChars.insert("(")
            validChars.insert(")")
        }
        
        if code.Mask.contains("-") { validChars.insert("-") }
        if code.Mask.contains(" ") { validChars.insert(" ") }

        let nonValidChars = Set(input).subtracting(validChars)
        return nonValidChars.isEmpty == false
        
    }
    
    private func removeInvalidChars(_ inputStr: String) -> String {
        var validChars: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
        
        if code.Mask.contains("(") {
            validChars.insert("(")
            validChars.insert(")")
        }
        
        if code.Mask.contains("-") { validChars.insert("-") }
        if code.Mask.contains(" ") { validChars.insert(" ") }

        var validStr = ""
        
        for char in inputStr {
            if validChars.contains(char) {
                validStr += String(char)
            }
        }
        
        return validStr
        
    }

}

