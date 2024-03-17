//
//  PontoonView.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 11/20/22.
//

import SwiftUI

struct PontoonView: View {
    
    @State private var open = false
    @State private var showCheckOutView = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let veryLightGray = Color(red: 0.902, green: 0.902, blue: 0.902)
    
    var body: some View {
        
        NavigationView {
            GeometryReader { g in
                
                VStack(spacing: 0) {
                    
                    CustomNavBar(
                        title: "Sunset Rental",
                        subTitle: "Up to 13 Passengers • Captained Charters",
                        backButton: presentationMode
                    )
                    
                    ZStack {
                        ScrollView(showsIndicators: false)
                        {
                            ImageSection(name: "pontoon")
                            
                            SubHeaderSection(
                                text: "Our 23 foot Luxury Tritoons are designed with your comfort in mind!"
                            )
                            
                            VStack(spacing: 8.5)
                            {
                                TextSection(
                                    header: "About",
                                    info: "Spend your evening on the lake basking in the sunset " +
                                          "or beneath the shade of the bimini. Equipped with 200 " +
                                          "horsepower engines, our boats can keep up with the best of them."
                                )
                                
                                TextSection(
                                    header: "Boat Info",
                                    info: "•Capacity: 14 passengers\n" +
                                          "•Engine: 200HP"
                                )
                                
                                
                                TextSection(
                                    header: "What's Included",
                                    info: "•Integrated bluetooth speakers\n" +
                                          "•LED lights\n" +
                                          "•Bimini cover\n" +
                                          "•Captain included\n" +
                                          "•Tax included"
                                )
                                
                                TextSection(
                                    header: "Not Included",
                                    info: "Gas & Parking not included"
                                )
                                
                                Text("\n\n\n\n\n\n")
                                
                            } //End of VStack inside of ScrollView
                            .padding([.leading, .trailing], 9)
                            
                        }//ScrollView Ends
                        
                        VStack {
                            Spacer()
                            Button("Reserve Now") {
                                showCheckOutView.toggle()
                            }
                            .buttonStyle(ButtonFormat())
                            .padding(.top, 14.5)
                            .frame(maxWidth: .infinity)
                            .padding(.bottom, 14.5)
                        }
                    }
                    
                } //Overall topmost VStack ends
                .background(veryLightGray)
                .fullScreenCover(isPresented: $showCheckOutView) {
                    BoatCheckOutView(bindingToRoot: presentationMode, isCheckOutShowing: $showCheckOutView)
                }
                
            }.edgesIgnoringSafeArea(.top) // GeometryReader ends
        }.navigationBarBackButtonHidden(true) // NavigationView Ends
        
    }
}

struct PontoonView_Previews: PreviewProvider {
    static var previews: some View {
        PontoonView()
    }
}

