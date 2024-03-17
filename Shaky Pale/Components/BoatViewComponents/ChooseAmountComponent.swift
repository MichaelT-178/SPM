//
//  ChooseAmountComponent.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 7/15/23.
//

import SwiftUI

struct ChooseAmountComponent: View {
    
    @Binding var buttonOne: Bool
    @Binding var buttonTwo: Bool
    @Binding var buttonThree: Bool
    @Binding var buttonFour: Bool
    
    @Binding var custom: Bool
    @Binding var total: Double
    
    var body: some View {
        
        
        //Choose amount buttons VStack
        VStack(spacing: 4) {
            
            HStack(alignment: .top){
                Text("Choose Amount")
                    .font(.system(size: 18, weight: .semibold))
                
                Spacer()
            }
            .padding(.top, 7)
            
            //Buttons Go here
            HStack {
                SelectButton(isSelected: $buttonOne, amount: "Custom")
                    .onTapGesture {
                        total = 0.00
                        custom.toggle()
                        buttonOne.toggle()
                        if (buttonOne) { buttonTwo = false; buttonThree = false; buttonFour = false }
                        
                    }
                
                Spacer()
                
                SelectButton(isSelected: $buttonTwo, amount: "$349")
                    .onTapGesture {
                        total = 349.0
                        buttonTwo.toggle()
                        if (buttonTwo) { custom = false; buttonOne = false;
                            buttonThree = false; buttonFour = false }
                    }
                
                Spacer()
                
                SelectButton(isSelected: $buttonThree, amount: "$698")
                    .onTapGesture {
                        total = 698.0
                        buttonThree.toggle()
                        if (buttonThree) { custom = false; buttonOne = false;
                            buttonTwo = false; buttonFour = false }
                    }
                
                Spacer()
                
                SelectButton(isSelected: $buttonFour, amount: "$1,396")
                    .onTapGesture {
                        total = 1396.0
                        buttonFour.toggle()
                        if (buttonFour) { custom = false; buttonOne = false;
                            buttonTwo = false; buttonThree = false }
                    }
            }
            .padding(.bottom, 7)
            
            
            //.background(.red)
            //.padding([.leading, .trailing], (g.size.width - 351) / 2) // (4 * 72 (width of button)) + (21 * 3) = 351
        }.frame(width: 355)
        
    }
}




