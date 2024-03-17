////
////  HomeView.swift
////  Shaky Pale
////
////  Created by Michael Totaro on 9/8/22.
////
//
//import SwiftUI
//
//let shakyPaleRed = Color(red: 0.741, green: 0.024, blue: 0.000)
//let veryLightGray = Color(red: 0.949, green: 0.949, blue: 0.969)
//let mediumGray = Color(red: 0.925, green: 0.925, blue: 0.925)
//
//struct HomeView: View {
//    
//    var body: some View {
//        
//        NavigationView {
//            GeometryReader  { g in
//                VStack(spacing: 0)
//                {
//                    
//                    
//                    VStack
//                    {
//                        HStack {
//                            Text("Shaky Pale Marine")
//                                .font(.system(size: 35, weight: .heavy))
//                                .foregroundColor(.white)
//                                .padding(.leading, 15)
//                                .padding(.top, g.size.height * 0.06) //Roughly 55 for iphone 14 (844.0 Height)
//                            Spacer()
//                        }.frame(width: g.size.width)
//                         .background(shakyPaleRed)
//                        
//                    }
//                    
//                    
//                    ScrollView(showsIndicators: false) {
//                        VStack(spacing: 20) {
//
//                            HStack {
//
//                                Image("pontoon")
//                                    .resizable()
//                                    .cornerRadius(12)
//                                    .overlay(
//                                        //Adds a border
//                                        RoundedRectangle(cornerRadius: 12)
//                                            .stroke(Color.black, lineWidth: 1)
//                                    )
//                                    .padding([.leading, .trailing], 12)
//                                    .frame(width: g.size.width , height: 180) //w: 360 h: 195
//                                    .padding([.top, .bottom], 10)
//                            }.background(.white)
//                                .padding(.top, 10)
//
//
//                            linkHStack("Information", menuOne)
//                            linkHStack("About Us", delete)
//                            socialMediaStack()
//
//
//
//                            VStack(spacing: 4)
//                            {
//                                HStack(spacing: 1){
//                                    Text("©") //It looks kind of weird when they're one string
//                                    Text("shakypalemarine")
//                                        .padding(.bottom, 2)
//                                }
//                                .padding(.trailing, 2.5)
//
//                                Text("All rights reserved")
//                            }.padding(.top, 3)
//
//                            Text("\n\n\n\n\n\n") //I prefer this approach over adding bottom padding to the scroll view
//                            
//                            
//                        }
//                    }
//                }
//                
//            }.ignoresSafeArea()
//             .background(mediumGray)
//        }
//    }
//}
//
//
//@ViewBuilder
//private func linkHStack(_ title: String, _ menu: [MenuItem]) -> some View {
//    
//    VStack(spacing: 0) {
//        HStack {
//            Text(title)
//                .font(.system(size: 20).bold())
//                .foregroundColor(.black)
//            
//            Spacer()
//        }
//        .padding(.leading, 12)
//        .padding([.top, .bottom], 8)
//        
//        
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack(spacing: 10){
//                
//                ForEach(menu) { item in
//                    VStack {
//                        NavigationLink(destination: item.destination) {
//                            Rectangle()
//                                .fill(shakyPaleRed)
//                                .cornerRadius(10)
//                                .frame(width: 100, height: 100)
//                                .overlay(
//                                    VStack {
//                                        
//                                        Image(systemName: item.picture)
//                                            .foregroundColor(.white)
//                                        
//                                    }
//                                )
//                            
//                                //.padding(.trailing, 8)
//                        }
//                        
//                        Text(item.text)
//                            .padding(.bottom, 8)
//                    }
//                    .padding(.trailing, 14)
//                    
//                }
//                
//            }
//        }.padding(.leading, 12)
//    }
//    .background(.white)
//}
//
//@ViewBuilder
//private func socialMediaStack() -> some View {
//    
//    VStack(spacing: 0) {
//        HStack {
//            Text("Social Media")
//                .font(.system(size: 20).bold())
//                .foregroundColor(.black)
//            
//            Spacer()
//        }
//        .padding(.leading, 12)
//        .padding([.top, .bottom], 8)
//        
//        
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack(spacing: 10){
//                
//                ForEach(socialMediaLinks) { item in
//                    VStack {
//                        Link(destination: URL(string: item.socialMediaLink ?? "https://www.example.com")!) {  //! force unwraps URL
////                            Circle()
////                                .fill(shakyPaleRed)
////                                .cornerRadius(10)
////                                .frame(width: 100, height: 100)
////                                .padding(.trailing, 8)
//                            
//                            Circle()
//                                .fill(.black)
//                                .frame(width: 100, height: 100)
//                                .overlay(
//                                    Image(item.picture)
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fill)
//                                        .clipShape(Circle())
//                                        .frame(width: 98, height: 98)
//                                        
//                                )
//
//                        }
//                        
//                        Text(item.text)
//                            .padding(.bottom, 8)
//                    }.padding(.trailing, 14)
//                    
//                }
//                
//            }
//        }.padding(.leading, 12)
//    }
//    .background(.white)
//}
//
////.if(title == "Social Media") { content in //See if function below
////    content.clipShape(Circle())
////}
//
////extension View {
////    @ViewBuilder func `if`<Content: View>(_ condition: Bool, content: (Self) -> Content) -> some View {
////        if condition { content(self) } else { self }
////    }
////}
//
//
//struct HomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeView()
//    }
//}
//
