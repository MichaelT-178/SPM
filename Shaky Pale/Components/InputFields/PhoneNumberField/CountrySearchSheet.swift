//
//  CountrySearch.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/9/23.
//

import SwiftUI

struct CountrySearchSheet: View {
    @Binding var selectedCode: PhoneNumberCode
    @Binding var isShowing: Bool
    @Binding var selectedItemId: Int
    @State private var searchText = ""
    
    var filteredCountryCodes: [PhoneNumberCode] {
        guard !searchText.isEmpty else { return phoneNumberCodes }
        return phoneNumberCodes.filter { $0.Country.localizedCaseInsensitiveContains(searchText) }
    }
    
    let searchBarGray = Color(red: 0.937, green: 0.937, blue: 0.937)
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            HStack {
                
                Text("Done")
                    .padding([.leading, .trailing], 5)
                    .padding([.top, .bottom], 3)
                    .cornerRadius(5)
                    .padding(.leading, 7)
                    .opacity(0)
                
                Spacer()
                
                Text("Select Country")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold))

                Spacer()
                
                Button {
                    isShowing.toggle()
                } label: {
                    
                    Text("Done")
                        .padding([.leading, .trailing], 5)
                        .padding([.top, .bottom], 3)
                        .background(.black)
                        .foregroundColor(.blue)
                        .cornerRadius(5)
                        .padding(.trailing, 7)
                        
                }
            }
            .padding([.top, .bottom], 8)
            .background(Color.shakyPaleGreen)
            
            
            VStack {
                ZStack {
                    Rectangle()
                        .fill(searchBarGray)
                        .frame(height: 35)
                        .cornerRadius(5)
                    
                    HStack {
                        
                        Image(systemName: "magnifyingglass")
                            .padding(.leading, 10)
                            .padding(.trailing, 5)
                            .frame(height: 35)
                            .background(searchBarGray)
                            .foregroundColor(.black)
                            .cornerRadius(5, corners: [.topLeft, .bottomLeft])
                        
                        TextField("Seach Countries", text: $searchText)
                        
                    }
                    
                }.padding([.leading, .trailing], 20)
                 .padding(.bottom, 10)
                
                Divider()
                    .frame(maxWidth: .infinity)
            }.background(Color.shakyPaleGreen)
            
            NavigationView {
                
                ScrollViewReader { proxy in
                    
                    if filteredCountryCodes.isEmpty {
                        Text("No results for \"\(searchText)\"")
                    }
                    
                    
                    List(filteredCountryCodes) { countryCode in
                        HStack {
                            Text(countryCode.Flag)
                            Text(countryCode.Country)
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Text("+\(countryCode.Prefix)")
                                .foregroundColor(selectedCode.Country == countryCode.Country ? .white : .black)
                                .padding(5)
                                .background(selectedCode.Country == countryCode.Country ? .blue : .white)
                                .cornerRadius(10)
                            
                        }
                        .listRowBackground(Color.white)
                        .contentShape(Rectangle()) //Makes onTapGesture work for whole cell
                        .id(countryCode.scrollId)
                        .onTapGesture {
                            selectedCode = countryCode
                            selectedItemId = countryCode.scrollId
                        }
                    }
                    .listStyle(PlainListStyle())
                    .onAppear {
                        //Keep 3 items above the selected item. scrollTo wont throw index out of
                        //bound error and will auto adjust, its cool like that.
                        proxy.scrollTo(selectedItemId - 3, anchor: .top)
                        
                        
                    }
                    
                    VStack {
                        Button {
                            proxy.scrollTo(1, anchor: .bottom)
                        } label: {
                            Text("Go to Top")
                        }
                    }.ignoresSafeArea()
                } //ScrollView Reader
            } //Navigation Link
        }
    }
}

