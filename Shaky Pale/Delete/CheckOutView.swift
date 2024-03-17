////
////  CheckOutView.swift
////  Shaky Pale
////
////  Created by Michael Totaro on 10/30/22.
////
//
//import SwiftUI
//
//struct CheckOutView: View {
//    
//    @EnvironmentObject var cart: Cart //CHANGED
//    
//    var body: some View {
//        
//        let shakyPaleGreen = Color(red: 0.059, green: 0.502, blue: 0.325)
//        let veryLightGray = Color(red: 0.949, green: 0.949, blue: 0.969)
//        
//        NavigationView
//        {
//            VStack
//            {
//                ScrollView {
//                    VStack {
//                        Spacer()
//                            .frame(height: 50)
//                        
//                        ForEach(cart.items) { item in
//                            Text(item.name)
//                        }
//                    } .frame(maxWidth: .infinity)
//                }
//                
//                
//            }.background(veryLightGray)
//                .position(x: 196, y: 412)
//            
//                .overlay(
//                    VStack {
//                        
//                        Rectangle()
//                            .fill(.white)
//                            .frame(height: 120)
//                            .border(.black, width: 0.5)
//                            .overlay(
//                                VStack {
//                                    
//                                    let total = String(format: "Total: $%.2f", Float(2000))
//                                    
//                                    Text(total)
//                                        .position(x: CGFloat(145 + ((total.count % 12) * 6)), y: 30)
//                                        .font(.system(size: 20, weight: .semibold))
//                                        .frame(alignment: .trailing)
//
//                                    
//                                    Button(action: {
//                                        //Do nothing
//                                        print("No items in cart")
//                                    }, label: {
//                                        if cart.items.count > 0 {
//
//                                            NavigationLink(destination: PaymentView(), label: {
//                                                    checkOutButton()
//                                                
//                                            }).simultaneousGesture(TapGesture().onEnded{
//                                                //cart.items.remove(at: 0)
//                                                
//                                                print("COUNT: \(cart.items.count)")
//                                            })
//                                
//                                            
//                                        } else {
//                                            checkOutButton()
//                                        }
//                                        
//                                    }).offset(y: -18)
//                                    
//                                }
//                            )
//                    }.frame(width: 500)
//                     .position(x: 200, y: 643) //Was 700
//                )
//                .overlay(
//                    VStack {
//                        
//                        shakyPaleGreen
//                            .frame(width: 500, height: 280)
//                            .position(x: 200, y: -83)
//                        
//                        Text("Your Cart")
//                            .font(.system(size: 37, weight: .heavy))
//                            .foregroundColor(.white)
//                            .position(x: 110, y: -330)
//                    }
//                )
//                .overlay(
//                    VStack {
//                        Text(cart.items.count == 0 ? "No Items" : "")
//                    }
//                )
//        }
//    }
//}
//
//
//@ViewBuilder
//private func checkOutButton() -> some View {
//    Text("Check Out")
//        .font(.headline)
//        .fontWeight(.semibold)
//        .foregroundColor(.white)
//        .padding()
//        .background(
//            Color.blue
//                .frame(width: 320, height: 40)
//        )
//}
//
//struct CheckOutView_Previews: PreviewProvider {
//    static var previews: some View {
//        CheckOutView()
//            .environmentObject(Cart()) //CHANGED
//    }
//}
