//
//  RentalView.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 9/8/22.
//

import SwiftUI

struct MainRentalView: View {
    
    let mediumGray = Color(red: 0.925, green: 0.925, blue: 0.925)
    
    var body: some View {
        
        NavigationView {
            GeometryReader  { g in
                
                VStack(spacing: 0)
                {
                    
                    HStack
                    {
                        Text("Reserve a Rental")
                            .font(.system(size: 35, weight: .heavy))
                            .foregroundColor(.white)
                            .padding(.leading, 15)
                            .padding(.top, g.size.height * 0.06)
                        Spacer()
                    }.frame(width: g.size.width)
                     .background(Color.shakyPaleRed)
                     //.padding(.bottom, 5)
                    
                    ScrollView { //(showsIndicators: false) {
                        
                        VStack(spacing: 8)
                        {
                            ForEach(BoatCards) { boat in
                                NavigationLink(destination: boat.view) {
                                    Image(boat.pic)
                                        .resizable()
                                        .border(.black, width: 2)
                                        .brightness(-0.021)
                                        .overlay(
                                            BoatOverlay(boatCard: boat),
                                            alignment: .bottomLeading
                                        )
                                        .padding([.leading, .trailing], 10)
                                        .frame(width: g.size.width, height: 200)
                                        .padding([.top, .bottom], 7)
                                        .background(.white)
                                        
                                    
                                }
                            }
                        }

                        Text("\n\n\n\n\n")
                    }
                    
                }.showTabBar().background(mediumGray) //Top most VStack Ends
            }.ignoresSafeArea() // GeometryReader ends
        } // NavigationView Ends
    } // Body ends
}

struct BlueTwoView_Previews: PreviewProvider {
    static var previews: some View {
        MainRentalView()
    }
}
