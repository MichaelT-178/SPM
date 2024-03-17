//
//  BoatDELETE.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 11/29/22.
//
//
//import SwiftUI
//
//struct BoatClicked: View {
//    var body: some View {
//
//        VStack {
//
//            //                Text("Tritoon Clicked")
//            //                    .navigationBarTitleDisplayMode(.inline)
//            let darkGray = Color(red: 0.205, green: 0.205, blue: 0.205)
//            let lightGreen = Color(red: 0.808, green: 0.980, blue: 0.816)
//            let darkGreen = Color(red: 0.000, green: 0.204, blue: 0.078)
//
//            Group {
//                Text("Sunset Rental")
//                    .fontWeight(.bold)
//                    .font(Font.system(size: 25))
//                    .padding(.bottom, 0.1)
//                    .offset(y: -17)
//                    .navigationBarTitleDisplayMode(.inline)
//
//
//
//                Text("Up to 13 Passengers • Captained Charters")
//                    .fontWeight(.light)
//                    .offset(x: 0, y: -26)
//                    .font(Font.system(size: 14))
//                    .padding(.bottom, 0.1)
//                    .foregroundColor(darkGray)
//                    .navigationBarTitleDisplayMode(.inline)
//
//                Image("boatpic")
//                    .resizable()
//                    .frame(width: 325, height: 165)
//
//                    .border(Color.black, width: 1.5)
//                    .offset(y: -31)
//              
//                HStack {
//                    Group {
//                        Text("$349")
//                            .fontWeight(.light)
//                            .background(lightGreen)
//                            .border(Color.black, width: 0.5)
//                            .padding(2)
//                            .foregroundColor(darkGreen)
//                            .font(Font.system(size: 12))
//                            .offset(x: -33 )
//
//                        Text("Three Hour Sunset Rentals")
//                            .fontWeight(.semibold)
//                            .padding(2)
//                            .font(Font.system(size: 14))
//                            .offset(x: -36, y: 1 )
//
//                        Text(" Up to 13 Passengers")
//                            .fontWeight(.light)
//                            .padding(2)
//                            .foregroundColor(darkGray)
//                            .font(Font.system(size: 11))
//                            .offset(x: -45, y: 1) //-300 is lower
//                    }
//                }.offset(x: 37, y: -37)
//
//            }
//
//
//
//
//            Group {
//
//
//
//                let midGray = Color(red: 0.584, green: 0.576, blue: 0.576)
//
//                HStack {
//                    Group {
//                        Text("Prices for")
//                            .fontWeight(.light)
//                            .padding(2)
//                            .foregroundColor(midGray)
//                            .font(Font.system(size: 13))
//                        
//                        NavigationLink(destination: WeirdLink(), label: {
//                            Text(getCurrentTime())
//                                .underline()
//                                .fontWeight(.light)
//                                .padding(2)
//                                .foregroundColor(midGray)
//                                .font(Font.system(size: 13))
//                                .offset(x: -9)
//                        })
//                                       
//                        Text(">")
//                            .fontWeight(.light)
//                            .padding(2)
//                            .foregroundColor(midGray)
//                            .font(Font.system(size: 9))
//                            .offset(x: -17)
//                    }
//                } .offset(x: -28, y: -46)
//                
//
//                Text("About")
//                    .fontWeight(.bold)
//                    .padding(2)
//                    .foregroundColor(Color.black)
//                    .font(Font.system(size: 17))
//                //.offset(x: -139, y: -274)
//                    .position(x: 53, y: -35)//90
//
//                VStack(spacing: -1) {
//                    Text("Spend your day on the lake basking in the sun or")
//                        .fontWeight(.light)
//                        .padding(2)
//                        .foregroundColor(Color.black)
//                        .font(Font.system(size: 14))
//                        .offset(x: -5)
//
//                    Text("beneath the shade of the bimini. Equipped with")
//                        .fontWeight(.light)
//                        .padding(2)
//                        .foregroundColor(Color.black)
//                        .font(Font.system(size: 14))
//                        .offset(x: -9)
//
//                    Text("200 horsepower engines, our boats can keep up")
//                        .fontWeight(.light)
//                        .padding(2)
//                        .foregroundColor(Color.black)
//                        .font(Font.system(size: 14))
//                        .offset(x: -6)
//
//
//                    Text("with the best of them.")
//                        .fontWeight(.light)
//                        .padding(2)
//                        .foregroundColor(Color.black)
//                        .font(Font.system(size: 14))
//                        .offset(x: -89)
//
//                }.position(x: 187, y: -39) //-310 is above -270
//
//                Text("Boat Info")
//                    .fontWeight(.bold)
//                    .padding(2)
//                    .foregroundColor(Color.black)
//                    .font(Font.system(size: 17))
//                //.offset(x: -139, y: -274)
//                    .position(x: 67, y: -30)
//
//                VStack(spacing: 1) {
//
//                    Group {
//                        Text("•")
//                            .fontWeight(.bold)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 23))
//                            .position(y: 19)
//
//                        Text("Capacity: 14 passengers")
//                            .fontWeight(.light)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 15))
//                            .position(x: 92, y: 9)
//
//                    }
//
//                    Group {
//                        Text("•")
//                            .fontWeight(.bold)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 23))
//                            .position(y: 19)
//
//
//
//                        Text("Engine: 200HP")
//                            .fontWeight(.light)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 15))
//                            .position(x: 61, y: 9)
//
//                    }
//                }.position(x: 230, y: -60)
//
//                Text("What's Included")
//                    .fontWeight(.bold)
//                    .padding(2)
//                    .foregroundColor(Color.black)
//                    .font(Font.system(size: 17))
//                //.offset(x: -139, y: -274)
//                    .position(x: 98, y: -60)
//
//                VStack(spacing: -13) {
//
//                    HStack {
//                        Text("•")
//                            .fontWeight(.bold)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 23))
//
//
//                        //Integrated bluetooth speakers
//                        Text("Bluetooth speakers")
//                            .fontWeight(.light)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 15))
//                            .offset(x: -7)
//
//                    }.offset(x: -2)
//
//                    HStack {
//                        Text("•")
//                            .fontWeight(.bold)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 23))
//
//
//
//
//                        Text("LED lights")
//                            .fontWeight(.light)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 15))
//                            .offset(x: -7)
//
//                    }.offset(x: -33)
//
//                    HStack {
//                        Text("•")
//                            .fontWeight(.bold)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 23))
//
//
//
//
//                        Text("Bimini cover")
//                            .fontWeight(.light)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 15))
//                            .offset(x: -7)
//
//                    }.offset(x: -26)
//
//                    HStack {
//                        Text("•")
//                            .fontWeight(.bold)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 23))
//
//
//
//                        Text("Captain included")
//                            .fontWeight(.light)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 15))
//                            .offset(x: -7)
//
//                    }.offset(x: -9)
//
//                    HStack {
//                        Text("•")
//                            .fontWeight(.bold)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 23))
//                            .position(x: 123, y: 17)
//
//
//
//                        Text("Tax Included")
//                            .fontWeight(.light)
//                            .padding(2)
//                            .foregroundColor(Color.black)
//                            .font(Font.system(size: 15))
//                            .position(x: -19, y: 17)
//                            .offset(x: -7)
//
//                    }
//                }.position(x: 110, y: -70)
//
//
//                VStack {
//                    Text("Not Included")
//                        .fontWeight(.bold)
//                        .padding(2)
//                        .foregroundColor(Color.black)
//                        .font(Font.system(size: 17))
//                    //.offset(x: -139, y: -274)
//                        .position(x: 84, y: -39)
//
//                    Text("Gas & Parking not included")          .fontWeight(.light)
//                        .padding(2)
//                        .foregroundColor(Color.black)
//                        .font(Font.system(size: 15))
//                        .position(x: 123, y: -42) //-80
//                }
//
//
//
//                Button(action: {
//                    print("Reserve now pressed!")
//                }) {
//                    HStack {
//
//                        NavigationLink(destination: ReserveNowButton(), label: {
//                            Text("Reserve now")
//                                .fontWeight(.semibold)
//                                .font(.title)
//
//                                .frame(minWidth: 0, maxWidth: .infinity)
//                                .font(.title)
//                                .padding()
//                                .foregroundColor(.white)
//                                .background(Color(.blue))
//                                .cornerRadius(33)
//                                .padding(.horizontal, 15)
//
//                                .overlay(RoundedRectangle(cornerRadius: 33)
//                                    .stroke(Color.black, lineWidth: 0.75)
//                                    .padding(.horizontal, 15))
//                                .position(x: 192, y: -11)
//
//
//                        })
//                    }
//
//
//                }
//
//
//
//
//            }
//
//        }
//    }
//}
