////
////  TritoonView.swift
////  Shaky Pale
////
////  Created by Michael Totaro on 10/19/22.
////
//
//import SwiftUI
//
//struct TritoonViewDELETE: View {
//    
//    @EnvironmentObject var prospects: Prospects //CHANGED
//    
//    var body: some View {
//        
//        ZStack {
//            Color.purple
//                .edgesIgnoringSafeArea(.all)
//
//            let paragraph = "Spend your day on the lake basking in the sun or\nbeneath the shade of the bimini. Equipped with\n200 horsepower engines, our boats can keep up\nwith the best of them"
//            
//            Text(paragraph)
//                .lineLimit(nil)
//                .font(.largeTitle)
//                .lineSpacing(0)
//                 
//        
//// ************************** CHANGED *********************************************
//            Button {
//                let p = Prospect()
//                p.name = "Paul Hudson"
//                p.emailAddress = "p@gmail.com"
//                prospects.people.append(p)
//            } label: {
//                Label("Scan", systemImage: "qrcode.viewFinder")
//            }
//
//
//            Text("People: \(prospects.people.count)")
//                .font(.system(size: 45, weight: .heavy)) //Size
//                .position(y: 10)
//// **************************************************************************************************
//
//        }
//    }
//}
//
////struct TritoonView_Previews: PreviewProvider {
////    static var previews: some View {
////        TritoonView()
////            .environmentObject(Prospects())
////    }
////}
//
