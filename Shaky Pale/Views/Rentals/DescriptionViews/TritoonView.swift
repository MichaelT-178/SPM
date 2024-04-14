//
//  TritoonView.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 11/20/22.
//

import SwiftUI

struct TritoonView: View {
    
    @State private var open = false
    @State private var showCheckOutView = false

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let veryLightGray = Color(red: 0.902, green: 0.902, blue: 0.902)
    
    
    var body: some View {
        
        NavigationView {
            GeometryReader { g in
                
                VStack(spacing: 0) {
                    
                    CustomNavBar(
                        title: "Daytime Tritoon Rental",
                        subTitle: "Up to 13 Passengers • Captained Charters",
                        backButton: presentationMode
                    )
                    
                    //Picture of Tritoon
                    
                    ZStack {
                        ScrollView(showsIndicators: false)
                        {
                            ImageSection(name: "tritoon")
                            
                            SubHeaderSection(
                                text: "Our 23 foot Luxury Tritoons are designed with your comfort in mind!"
                            )
                            
                            VStack(spacing: 8.5)
                            {
                                TextSection(
                                    header: "About",
                                    info: "Spend your day on the lake basking in the sun or beneath " +
                                          "the shade of the bimini. Equipped with 200 horsepower " +
                                          "engines, our boats can keep up with the best of them."
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
                                
                                //Newline characters to prevent ScrollView from
                                //bouncing back up when the user scrolls down
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
                            //.background(veryLightGray)
                        }

//                        ButtonSection(
//                            linkNumber: 1,
//                            bindingToMainRental: presentationMode
//                        )
                    }
                } //Overall topmost VStack ends
                .background(veryLightGray)
                .fullScreenCover(isPresented: $showCheckOutView) {
                    BoatCheckOutView(bindingToRoot: presentationMode,
                                     isCheckOutShowing: $showCheckOutView)
                }
                
            }.edgesIgnoringSafeArea(.top) // GeometryReader ends
        }.navigationBarBackButtonHidden(true) // NavigationView Ends
        
    }
}

struct TritoonView_Previews: PreviewProvider {
    static var previews: some View {
        TritoonView()
    }
}
