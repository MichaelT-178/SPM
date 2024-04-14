//
//  GiftCardHelper.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/25/23.
//

import Foundation

class GiftCardHelper {
    let btnOneSelected: Bool
    let btnTwoSelected: Bool
    let btnThreeSelected: Bool
    let btnFourSelected: Bool
    let customAmount: Double
    let recipientName: String
    let recipientEmail: String
    
    init (btnOneSelected: Bool, btnTwoSelected: Bool, btnThreeSelected: Bool, btnFourSelected: Bool,
          customAmount: Double, recipientName: String, recipientEmail: String)
    {
        self.btnOneSelected = btnOneSelected
        self.btnTwoSelected = btnTwoSelected
        self.btnThreeSelected = btnThreeSelected
        self.btnFourSelected = btnFourSelected
        self.customAmount = customAmount
        self.recipientName = recipientName
        self.recipientEmail = recipientEmail
    }
    
    func isValidEmail(_ emailString: String) -> Bool {

        if emailString.count > 100 { return false }

        let emailFormat = "(?:[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}" + "~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\" + "x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[\\p{L}0-9](?:[a-" + "z0-9-]*[\\p{L}0-9])?\\.)+[\\p{L}0-9](?:[\\p{L}0-9-]*[\\p{L}0-9])?|\\[(?:(?:25[0-5" + "]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-" + "9][0-9]?|[\\p{L}0-9-]*[\\p{L}0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21" + "-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"

        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: emailString)
    }
    
    func thePrice() -> Double {
        if btnOneSelected { return (customAmount > 0) ? customAmount : -1.0 }
        else if btnTwoSelected { return 349.0 }
        else if btnThreeSelected { return 698.0 }
        else if btnFourSelected { return 1396.0 }
        else { return -1.0 }
    }
    
    func allFieldsValid() -> Bool {
        let validChooseAmount = {
            if self.btnTwoSelected || self.btnThreeSelected || self.btnFourSelected {
                return true
            } else if self.btnOneSelected {
                return self.customAmount > 0.0
            } else {
                return false
            }
        }
        
        let validName = self.recipientName != ""
        let validEmail = self.recipientEmail != "" && isValidEmail(self.recipientEmail)
        
        return validChooseAmount() && validName && validEmail
    }
}
