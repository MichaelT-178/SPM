////
////  TritoonButton.swift
////  Shaky Pale
////
////  Created by Michael Totaro on 1/1/23.
////
//
//import SwiftUI
//
//struct TritoonButton: View {
//    
//    @Binding var isSelectedTri: Bool
//    @State var rentalType: String
//
//    var body: some View {
//        ZStack {
//            Rectangle()
//                .fill(.white)
//                .frame(width: 72, height: 33)
//                .border(isSelectedTri ? .blue : .gray, width: 1.5)
//                .overlay(
//                    Text(rentalType)
//                        .foregroundColor(isSelectedTri ? .blue : .gray)
//                        .font(.system(size: 16, weight: .medium))
//                )
//        }
//        
//    }
//}
//
//struct TritoonButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TritoonButton(isSelectedTri: .constant(false), rentalType: "Options")
//    }
//}

