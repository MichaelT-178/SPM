//
//  CheckOut.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 3/4/23.
//

import SwiftUI

struct CheckOut: View {
    
    @EnvironmentObject var cart: Cart //CHANGED
    
    let veryLightGray = Color(red: 0.949, green: 0.949, blue: 0.969)
    let dividerGray = Color(red: 0.780, green: 0.780, blue: 0.780)
    let darkWhite = Color(red: 0.992, green: 0.992, blue: 0.992)
    
    var body: some View {
        NavigationView {
            GeometryReader  { g in
                ZStack {
                    VStack(spacing: 0)
                    {
                        
                        let screenHeight = UIScreen.main.bounds.height - g.safeAreaInsets.top
                        
                        VStack
                        {
                            HStack {
                                Text("Your Cart")
                                    .font(.system(size: 35, weight: .heavy))
                                    .foregroundColor(.white)
                                    .padding(.leading, 15)
                                    .padding(.top, screenHeight * 0.06) //Roughly 55 for iphone 14 (844.0 Height)
                                Spacer()
                            }.frame(width: g.size.width)
                             .background(Color.shakyPaleGreen)
                            
                        }
                        
                        if cart.items.count != 0 {
                            ScrollView {
                                VStack {
                                    List {
                                        ForEach(cart.items) { item in
                                            Text(item.name)
                                        }
                                    }
                                    
                                    Text("CHECK OUT")
                                }
                            }
                        } else {
                            VStack {
                                
                                Spacer()
                                
                                Image(systemName: "cart.circle")
                                    .renderingMode(.template)
                                    .font(.system(size: 82))
                                    .foregroundColor(Color.shakyPaleGreen)
                                
                                Text("No Items")
                                    .font(.system(size: 23))
                                
                                Spacer()
                                
                            }.padding(.bottom, 50)
                        }
                    } //Top most VStack Ends
                    
                    VStack(spacing: 0) {
                        Spacer()
                        
                        Divider()
                            .background(.black)
                        
                        Button {
                            if cart.items.count != 0 {
                                print("HELLO ")
                            }
                        } label: {
                            VStack {
                                Text("Check Out")
                                    .padding([.top, .bottom], 8) //Changes height of inside button
                                    .frame(maxWidth: .infinity)
                                    .font(.system(size: 25, weight: .semibold))
                                    .background(.blue)
                                    .foregroundColor(.white)
                            }.padding([.top, .bottom], 11) //Changes height of background
                             .padding([.leading, .trailing], 30) //Changes width of button
                             .background(Color.appleLightGray)
                        }
                    }
                    
                }.edgesIgnoringSafeArea(.top)
                 .background(Color.appleLightGray)
            }
        }
        
    } // NavigationView Ends
} // Body ends

struct CheckOut_Previews: PreviewProvider {
    static var previews: some View {
        CheckOut()
    }
}
