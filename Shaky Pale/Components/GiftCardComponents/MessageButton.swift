//
//  MessageButton.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/25/23.
//

import SwiftUI

struct MessageButton: View {
    
    @Binding var messageShowing: Bool
    
    var body: some View {
        VStack {
//        VStack(spacing: 8) {
//            HStack {
//                Text("Message (Optional)")
//                    .font(.system(size: 18, weight: .semibold))
//
//                Spacer()
//            }.padding(.leading, 26)
            
            Button {
                messageShowing.toggle()
            } label: {
                
                ZStack {
                    Capsule()
                        .stroke(.black)
                        .frame(height: 50)
                    
                    
                    HStack(spacing: 0){
                        Image(systemName: "plus")
                            .font(.system(size: 17))
                            .padding(.trailing, 4)
                        
                        Text("Add Message")
                            .font(.system(size: 17))
                        
                        Spacer()
                    }.padding(.leading, 15)
                    
                }.padding([.leading, .trailing], 25)
            }
            
        }.padding([.top, .bottom], 10)
         .background(.white)
        
    }
}
