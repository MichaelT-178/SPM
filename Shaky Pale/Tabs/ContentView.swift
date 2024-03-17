//
//  ContentView.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 9/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var cart = Cart() //CHANGED
    
    @State private var keyboardShowing = false
    
    init() {
        //let lightGrayColor = UIColor(red: 0.816, green: 0.816, blue: 0.816, alpha: 1)
        let tabBarGrayColor = UIColor(red: 0.765, green: 0.765, blue: 0.765, alpha: 1)
        let shakyPaleRedTB = UIColor(red: 0.741, green: 0.024, blue: 0.000, alpha: 1)
        
        UITabBar.appearance().backgroundColor = tabBarGrayColor
        UITabBar.appearance().barTintColor = tabBarGrayColor
        
        UITabBarItem.appearance().badgeColor = shakyPaleRedTB //Changes badge color
    }
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            MainRentalView()
                .tabItem {
                    Image(systemName: "sailboat")
                    Text("Rentals")
                }
            
            CheckOut()
                .badge(cart.items.count)
                .tabItem {
                    Image(systemName: "cart")
                    Text("Check Out")
                }
        }
        .environmentObject(cart) //CHANGED
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Cart()) //CHANGED
    }
}
