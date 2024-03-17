//
//  AddOnSelector.swift
//  TestApp
//
//  Created by Michael Totaro on 8/1/23.
//

import SwiftUI

struct AddOn: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let price: Int
    var isChecked: Bool
}

struct AddOnSelector: View {
    
    @Binding var addOns: [AddOn]
    @Binding var addOnPrice: Double
    @Binding var savedAddOns: [AddOn]

    init (addOns: Binding<[AddOn]>, addOnPrice: Binding<Double>, savedAddOns: Binding<[AddOn]>) {
        _addOns = addOns
        _addOnPrice = addOnPrice
        _savedAddOns = savedAddOns
    }
    
    var body: some View {
        
        VStack(spacing: 0){
            VStack(spacing: 0) {
                HStack {
                    Text("Add-Ons")
                        .font(.system(size: 18, weight: .bold))
                    Spacer()
                }.padding(.leading, 14)
                 .padding(.bottom, 10)

            }.padding(.top, 12)
            
            ForEach($addOns) { $addOn in
                VStack {
                    HStack {
                        Text(addOn.name)
                            .font(.system(size: 18))
                                  
                        Spacer()
                        
                        Text("$\(addOn.price).00")
                            .font(.system(size: 18, weight: .bold))
                        
                        Image(systemName: addOn.isChecked ? "checkmark.circle.fill" : "circle")
                            .foregroundColor(addOn.isChecked ? .blue : .secondary)
                            .onTapGesture {
                                addOn.isChecked.toggle()
                                addOnPrice = calculateTotalPrice()
                                modifySavedAddOns()
                            }
                        
                    }.padding([.leading, .trailing], 14)
                    
                    if addOn.name != "Water Toys" {
                        Divider()
                            .background(.black)
                            .frame(maxWidth: .infinity)
                            .padding([.leading, .trailing], 10)
                    }
                    
                }.padding(.top, 10)
                 .padding(.bottom, 5)
            }
            
        }.padding(.bottom, 10)
        .background(.white)
    }
    
    
    func calculateTotalPrice() -> Double {
        var total: Double = 0.0
        
        for addOn in addOns {
            if addOn.isChecked {
                total += Double(addOn.price)
            }
        }
        
        return total
    }
    
    func modifySavedAddOns() {
        var updatedSavedAddOns: [AddOn] = []
        
        for addOn in addOns {
            if addOn.isChecked {
                updatedSavedAddOns.append(addOn)
            }
        }
        
        savedAddOns = updatedSavedAddOns
    }

}




