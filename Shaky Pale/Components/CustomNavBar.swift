//
//  CustomNavBar.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 1/29/23.
//

import SwiftUI

struct CustomNavBar: View {
    
    var title: String
    var subTitle: String
    var backButton: Binding<PresentationMode>
    
    var body: some View {
        
        let darkBlue = Color(red: 0.169, green: 0.110, blue: 0.718)
        let silver = Color(red: 0.753, green: 0.753, blue: 0.753)
        
        HStack {
            Button(action: {
                backButton.wrappedValue.dismiss()          
            }, label: {
                VStack {
                    
                    Image(systemName: "chevron.left")
                        .foregroundColor(title == "Gift Card" ? .blue : .black)
                        .offset(x: 3)
                }
            })
            
            VStack {
                
                Text(title)
                    .font(.title)
                    .bold()
                    .foregroundColor(title == "Gift Card" ? silver : .black)
                
                Text(subTitle)
                    .font(.system(size: 18, weight: .light)).scaledToFit() //18
                    .foregroundColor(silver)
                
            }
            
            //For spacing purposes only. The opacity makes it invisible
            Button(action: {}, label: {
                VStack {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.black)
                    //.offset(x: 3)
                    
                }
            }).opacity(0)
            
        }.frame(width: UIScreen.main.bounds.width)
         .padding(.top, 38)
         .padding(.bottom, 7)
         .background(title == "Gift Card" ? darkBlue : Color.shakyPaleRed)
        
    }
}

