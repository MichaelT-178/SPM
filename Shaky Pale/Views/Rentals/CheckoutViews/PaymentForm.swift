//
//  PaymentForm.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/20/23.
//

import SwiftUI

struct PaymentForm: View {
    
    @Binding var isShowing: Bool
    @Binding var isCheckOutShowing: Bool
    var bindingToRoot: Binding<PresentationMode>
    
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    isShowing = false
                    isCheckOutShowing = false
                    bindingToRoot.wrappedValue.dismiss()
                } label: {
                    Text("Back to Root")
                }
            }
            Form {
                Text("HEllo")
            }
            .navigationTitle("Payment Info")
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Spacer()
                        Button(action: {
                            isShowing = false
                        }) {
                            Image(systemName: "xmark")
                                .foregroundColor(.black)
                        }
                    }
                }
                
            }
        }

    }
}

