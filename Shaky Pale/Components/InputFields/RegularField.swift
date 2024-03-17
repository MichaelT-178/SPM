//
//  RegularField.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/15/23.
//

import SwiftUI

struct RegularField: View {
    
    let placeHolderText: String
    @Binding var text: String
    @Binding var error: Bool
    var lettersOnly: Bool?
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(error ? .red : .black)
                .frame(height: 50)
            
            TextField(placeHolderText, text: $text)
                .padding()
                .font(.system(size: 17))
                .autocapitalization(.none)
                .onChange(of: text) { newVal in
                    //.alphabet keyboard doesn't really work. Allows only letters and spaces for input
                    if lettersOnly ?? false {
                        if newVal.count > 0 {
                            if containsInvalidChars(newVal) {
                                text = removeInvalidChars(text)
                            }
                        }
                    }
                }
            
        }.padding([.leading, .trailing], 25)
    }
    
    private func containsInvalidChars(_ input: String) -> Bool {
        let validChars: Set<Character> = Set("abcdefghijklmnopqrstuvwxyz ")
        let nonValidChars = Set(input.lowercased()).subtracting(validChars)
        return nonValidChars.isEmpty == false
    }
    
    private func removeInvalidChars(_ inputStr: String) -> String {
        let validChars: Set<Character> = Set("abcdefghijklmnopqrstuvwxyz ")
        
        var validStr = ""
        
        for char in inputStr {
            if validChars.contains(Character(char.lowercased())) {
                validStr += String(char)
            }
        }
        
        return validStr
    }
}

