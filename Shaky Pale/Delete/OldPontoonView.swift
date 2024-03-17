////
////  PontoonView.swift
////  Shaky Pale
////
////  Created by Michael Totaro on 11/20/22.
////
//
//import SwiftUI
//
//struct PontoonView: View {
//    
//    @State private var open = false
//    
//    var body: some View {
//        let shakyPaleRed = Color(red: 0.741, green: 0.024, blue: 0.000)
//        let silver = Color(red: 0.753, green: 0.753, blue: 0.753)
//        
//        VStack
//        {
//            //Header
//            VStack {
//                shakyPaleRed
//                    .frame(width: 400, height: 165)
//                    .position(x: 200, y: -62.4)
//                
//                Text("Sunset Rental")
//                    .font(.system(size: 30, weight: .bold))
//                    .foregroundColor(.black)
//                    .position(x: 200, y: -82)
//                
//                Text("Up to 13 Passengers • Captained Charters")
//                    .font(.system(size: 18, weight: .light))
//                    .foregroundColor(silver)
//                    .position(x: 200, y: -110)
//                
//                Image("pontoon")
//                    .resizable()
//                    .border(.black, width: 0.2)
//                    .frame(width: 400, height: 175)
//                    .position(x: 196, y: -62.25)
//            }
//            
//            
//            VStack(alignment: .leading, spacing: 9.5)
//            {
//                Text("Our 23 foot Luxury Tritoons are designed \nwith your comfort in mind!")
//                    .font(.system(size: 18, weight: .heavy))
//                    .fixedSize(horizontal: false, vertical: true)
//                
//                VStack(alignment: .leading, spacing: 3) {
//                    Text("About")
//                        .font(.system(size: 17, weight: .heavy))
//                    
//                    Text("Spend your evening on the lake basking in the sunset \nor beneath the shade of the bimini. Equipped with 200 horsepower engines, our boats can keep up with the \nbest of them.").font(.system(size: 14))
//                        .lineSpacing(0.15)
//                    
//                }.fixedSize(horizontal: false, vertical: true)
//                
//                
//                VStack(alignment: .leading, spacing: 3) {
//                    Text("Boat Info")
//                        .font(.system(size: 17, weight: .heavy))
//                    
//                    Group {
//                        Text("•Capacity: 14 passengers")
//                        Text("•Engine: 200HP")
//                    }.font(.system(size: 14))
//                        .lineSpacing(0.1)
//                }
//                
//                VStack(alignment: .leading, spacing: 3) {
//                    Text("What's Included")
//                        .font(.system(size: 17, weight: .heavy))
//                    
//                    Group {
//                        Text("•Integrated bluetooth speakers")
//                        Text("•LED lights")
//                        Text("•Bimini cover")
//                        Text("•Captain included")
//                        Text("•Tax included")
//                    }.font(.system(size: 14))
//                        .lineSpacing(0.05)
//                    
//                }
//                
//                VStack(alignment: .leading, spacing: 3) {
//                    Text("About")
//                        .font(.system(size: 17, weight: .heavy))
//                    Text("Gas & Parking not included")
//                        .font(.system(size: 14))
//                    
//                }
//                
//            }.position(x: 203, y: 172)
//            
//            //Button
//            VStack {
//                Button("Reserve Now") {
//                    open.toggle()
//                }
//                .buttonStyle(ButtonFormat())
//                .position(x: 197, y: 176)
//                .sheet(isPresented: $open) {
//                    PontoonSheet()
//                }
//            }
//            
//        }
//    }
//}
//
//struct PontoonView_Previews: PreviewProvider {
//    static var previews: some View {
//        PontoonView()
//    }
//}
//
