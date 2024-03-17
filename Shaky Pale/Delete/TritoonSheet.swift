////
////  TritoonSheet.swift
////  Shaky Pale
////
////  Created by Michael Totaro on 11/20/22.
////
//
//import SwiftUI
//
//struct TritoonSheet: View {
//    
//    @EnvironmentObject var cart: Cart
//    @State private var date: Date = Date()
//
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//    var bindingToRoot: Binding<PresentationMode>
//    
//    
//
//    let appleGray = Color(red: 0.949, green: 0.949, blue: 0.969)
//    let shakyPaleGreen = Color(red: 0.059, green: 0.502, blue: 0.325)
//    
//    var body: some View {
//        VStack {
//            
//            VStack {
//                
//                Button(action: {
//                    presentationMode.wrappedValue.dismiss()
//                }, label: {
//                    Text("GO BACK")
//                })
//                
//                Button(action: {
//                    bindingToRoot.wrappedValue.dismiss()
//                }, label: {
//                    Text("GO TO ROOT")
//                })
//                
//                Text("Check Out Information")
//                    
//                    .frame(width: 400, height: 30)
//                    //.background(shakyPaleRed)
//                    //.foregroundColor(.red)
//                    .background(shakyPaleGreen)
//                    .border(.black)
//                    .offset(y: 20)
//
//                    
//                DatePicker(selection: $date , displayedComponents: [.date]) {
//                    Text("Pick a date")
//                }
//                .datePickerStyle(.graphical)
//                .padding(8)
//                .frame(width: 320)
//                .accentColor(Color.shakyPaleRed)
//                .background(
//                    RoundedRectangle(cornerRadius: 30)
//                        .stroke(Color.shakyPaleRed, lineWidth: 3)
//                        .background(.white)
//                )
//                .background(.white, in: RoundedRectangle(cornerRadius: 30))
//                //.transformEffect(.init(scaleX: 0.85, y: 0.75))
//                .transformEffect(.init(scaleX: 0.85, y: 0.85))
//                .offset(x: 20, y: 30)
//            
//                HStack {
//                    Text("The selected date is")
//                        .offset(x: -55)
//                    
//                    let thing = "Hello" //date
//                    
//                    Rectangle()
//                        .fill(.green)
//                        .frame(width: 85, height: 30)
//                        .border(.red, width: 0.25)
//                        .overlay(
//                            Text("\(thing)")
//                                .foregroundColor(.black)
//                        )
//                        .offset(x: 50)
//                }
//                
//                
//                
//                HStack {
//                    Text("Please select a time")
//                        .offset(x: -55)
//                    
//                    
//                    Rectangle()
//                        .fill(.green)
//                        .frame(width: 85, height: 30)
//                        .border(.red, width: 0.25)
//                        .overlay(
//                            Text("7:00 PM")
//                                .foregroundColor(.black)
//                        )
//                        .offset(x: 50)
//                }
//                
//                
//            }
//
//            AddOnSelector(cool: cart.items.count % 2 == 0 ? 369 : 4000)
//                .offset(y: 50)
//            
//
//            
//            
//            
//        }.background(appleGray)
//        .navigationBarTitle("")
//        .navigationBarHidden(true)
//        
//    }
//}
//
//
////struct TritoonSheet_Previews: PreviewProvider {
////    static var previews: some View {
////        TritoonSheet()
////            .environmentObject(Cart())
////    }
////}
