//
//  HomeView.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 9/8/22.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        
        NavigationView {
            GeometryReader  { g in
                VStack(spacing: 0)
                {
                    
                    
                    VStack
                    {
                        HStack {
                            Text("Shaky Pale Marine")
                                .font(.system(size: 35, weight: .heavy))
                                .foregroundColor(.white)
                                .padding(.leading, 15)
                                .padding(.top, g.size.height * 0.06) //Roughly 55 for iphone 14 (844.0 Height)
                            Spacer()
                        }.frame(width: g.size.width)
                            .background(Color.shakyPaleRed)
                        
                    }
                    
                    
                    ScrollView(showsIndicators: false) {
                        
                        VStack(spacing: 0) {
                            Image("pontoon")
                                .resizable()
                                .frame(width: g.size.width, height: 190)
                        
                            
                            VStack(spacing: 0) {
                                
                                ForEach(menu) { menuItem in
                                    
                                    NavigationLink(destination: menuItem.destination) {
                                        
                                        VStack(spacing: 0){
                                            HStack {
                                                Image(systemName: menuItem.picture)
                                                    .renderingMode(.template)
                                                    .foregroundColor(.shakyPaleRed)
                                                    .font(.title2)
                                                    .frame(width: 27) //frame helps with vertically aligning images
                                                
                                                Text(menuItem.text)
                                                    .font(.title2)
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(.black)
                                                    .padding(.leading, 5)
                                                
                                                Spacer()
                                                
                                                Image(systemName: "chevron.right")
                                                    .renderingMode(.template)
                                                    .foregroundColor(.gray)
                                                
                                            }
                                            .padding()
                                            .padding([.top, .bottom], 7)
                                            .frame(width: g.size.width)
                                            .background(.white)
                                            
                                            Divider()
                                                .frame(height: 0.7)
                                                .background(Color.appleLightGray)
                                        }
                                    }
                                }
                            }
                            
                            VStack(spacing: 4)
                            {
                                HStack(spacing: 1){
                                    Text("©") //It looks kind of weird when they're one string
                                    Text("shakypalemarine")
                                        .padding(.bottom, 2)
                                }
                                .padding(.trailing, 2.5)
                                
                                Text("All rights reserved")
                            }.padding(.top, 8)
                            
                            Text("\n\n\n\n\n\n")
                        }
                        
                    }
                }
                
            }.ignoresSafeArea()
             .background(Color.appleLightGray)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
