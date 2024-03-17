//
//  MessagePopUpField.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/25/23.
//

import SwiftUI
import Combine

struct MessagePopUpField: View, KeyboardReadable {
    @Binding var messageText: String
    @Binding var messageShowing: Bool
    
    @FocusState private var isFocused: Bool
    @State private var keyboardShowing = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Message")
                
                Spacer()
                
                Button {
                    hideKeyboard()
                    messageShowing.toggle()
                } label: {
                    
                    ZStack {
                        Circle()
                            .fill(.black)
                            .frame(width: 31, height: 31)
                        
                        Image(systemName: "xmark")
                            .renderingMode(.template)
                            .font(.system(size: 24))
                            //.foregroundColor(.white)
                    }

                }
                
            }
            .padding(.top, 10)
            
            
            
            ZStack(alignment: .topLeading) {
                
                VStack {
                    TextEditor(text: $messageText)
                        .frame(height: 125)
                        .focused($isFocused)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.black)
                        }
                }
                .frame(maxWidth: .infinity)
                .padding([.leading, .trailing], 10)
                
                
                
                if !isFocused && messageText.isEmpty {
                    Text("Enter message")
                        .font(.system(size: 18))
                        .foregroundColor(Color(.placeholderText))
                        .padding(.leading, 14)
                        .padding(.top, 17)
                }
            }
            
            Button {
                print("MEssage entered")
                hideKeyboard()
            } label: {
                Text("Submit")
                    .background(.blue)
                    .frame(height: 30)
            }
            
            Rectangle()
                .fill(.white)
                .frame(maxWidth: .infinity)
                .frame(height: keyboardShowing ? 1 : 30)
            
        }.frame(maxWidth: .infinity)
         .background(.white)
         .cornerRadius(15, corners: [.topLeft, .topRight])
         .onReceive(keyboardPublisher) { newIsKeyboardVisible in
             keyboardShowing = newIsKeyboardVisible
         }
        
    }
    
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}


