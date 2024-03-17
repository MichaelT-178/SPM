////
////  PaymentView.swift
////  Shaky Pale
////
////  Created by Michael Totaro on 12/28/22.
////
//
//import SwiftUI
//
//struct PaymentView: View {
//    
//    
//    @EnvironmentObject var cart: Cart //CHANGED
//    @State private var recipientYeet = ""
//    
//    var body: some View {
//        
//        VStack {
//            
//            Text("Purchase here")
//            
//            
//            
//            TextField("", text: $recipientYeet)
//                .autocapitalization(.none)
//                .padding(.leading, 7.5)
//                .border(.black)
//                .frame(width: 355)
//                .offset(x: -7.25, y: -5)
//
//        }
////        .onAppear {
////            cart.items.remove(at: 0)
////            print("COUNT: \(cart.items.count)")
////        }
//    }
//}
//
//struct PaymentView_Previews: PreviewProvider {
//    static var previews: some View {
//        PaymentView()
//            .environmentObject(Cart()) //CHANGED
//    }
//}
