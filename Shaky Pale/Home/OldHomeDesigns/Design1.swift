////
////  HomeView.swift
////  Shaky Pale
////
////  Created by Michael Totaro on 9/8/22.
////
//
//import SwiftUI
//
//struct HomeView: View {
//    
//    let veryLightGray = Color(red: 0.949, green: 0.949, blue: 0.969)
//    let shakyPaleRed = Color(red: 0.741, green: 0.024, blue: 0.000)
//    
//    var body: some View {
//        
//        NavigationView {
//            GeometryReader  { g in
//                
//                VStack(spacing: 0.03080 * g.size.height) { //was 22.5 //26
//                    
//                    HStack
//                    {
//                        Text("Shaky Pale Marine")
//                            .font(.system(size: 35, weight: .heavy))
//                            .foregroundColor(.white)
//                            .padding(.leading, 15)
//                            .padding(.top, g.size.height * 0.064) //Roughly 55 for iphone 14 (844.0 Height)
//                        Spacer()
//                    }.frame(width: g.size.width, height: g.size.height * 0.13)
//                     .background(shakyPaleRed)
//                    
//                    Image("pontoon")
//                        .resizable()
//                        .frame(width: g.size.width * 0.923 , height: g.size.height * 0.231) //w: 360 h: 195
//                        .cornerRadius(12)
//                        .overlay(
//                            //Adds a border
//                            RoundedRectangle(cornerRadius: 12)
//                                .stroke(Color.black, lineWidth: 1)
//                        )
//
//                    
//                    List {
//                        Section
//                        {
//                            ForEach(menu) { menuItem in
//                                NavigationLink(destination: menuItem.destination) {
//                                    Label {
//                                        Text(menuItem.text)
//                                    } icon: {
//                                        Image(systemName: menuItem.picture)
//                                            .foregroundColor(shakyPaleRed)
//                                    }
//                                }
//                            }
//                        } header: {
//                            Text("**Information**")
//                                .font(.system(size: 21))
//                                .offset(x: -15)
//                        }.headerProminence(.increased)
//                    }
//                    .listStyle(GroupedListStyle())
//                    .frame(width: g.size.width * 0.8974, height: g.size.height * 0.59241) // (width: 350, height: 500) iphone 14
//                    
//                }.background(veryLightGray) // Topmost VStack ends
//            }.ignoresSafeArea() // GeometryReader ends
//        } // NavigationView Ends
//    } // Body ends
//}
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}

