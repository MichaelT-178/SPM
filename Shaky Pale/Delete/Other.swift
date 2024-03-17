//
//  Other.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 6/24/23.
//

//import Foundation


//                    let screenHeight = g.size.height - (UIScreen.screenHeight * 0.13)
//
//                    VStack {
//                        Spacer()
//                            .frame(height: 15)
//
//                        ScrollView {
//                            VStack(spacing: 15) {
//                                ForEach(cart.items) { item in
//                                    Text(item.name)
//                                }
//                            }
//
//                            Spacer() //Pushes the Items to the top of the VStack
//
//                        }
//
//                    }.frame(width: g.size.width, height: screenHeight * 0.88)
//                        //.background(Color.red)
//                        .background(Color.white)
                    
//
//                    Divider()
//                        .frame(height: 1.5)
//                        .overlay(dividerGray)
//
//                    VStack {
//
//                        Spacer()
//
//                        Button(action: {
//                            //Do nothing
//                            print("No items in cart")
//                        }, label: {
//                            if cart.items.count > 0 {
//
//                                NavigationLink(destination: PaymentView(), label: {
//                                    checkOutButton()
//                                }).simultaneousGesture(TapGesture().onEnded{
//                                    //cart.items.remove(at: 0)
//
//                                    print("COUNT: \(cart.items.count)")
//                                })
//
//
//                            } else {
//                                checkOutButton()
//                            }
//
//
//                        })//.padding(.top, 8)
//
//                        Spacer()
//                    }.frame(width: g.size.width, height: screenHeight * 0.12)
//                        //.background(.purple)
//                        .background(darkWhite)
//
//
//                    //}.background(veryLightGray) // Topmost VStack ends
//                }//.background(.red) // Topmost VStack ends
//
//                        .overlay(
//                            VStack {
//                                if cart.items.count == 0 {
//                                    Image(systemName: "cart.circle")
//                                    //Image(systemName: "cart")
//                                        .resizable()
//                                        .scaledToFit()
//                                        .frame(width: 60, height: 60)
//                                        .foregroundColor(shakyPaleGreen)
//
//
//
//                                    Text("No Items")
//                                        .font(.title2)
//                                }
//
//                            }
//                        )
