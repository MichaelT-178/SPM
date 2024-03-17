//
//  Prospect.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 11/5/22.
//

import SwiftUI

class CartItem: Identifiable, Codable {
    var id = UUID()
    var name = "Michael"
    var emailAddress = ""
    var isContacted = false
    var num = 0
    
    var pic: String?
    var price: Float?
    var recipientName: String?
    var recipientEmail: String?
    var message: String?
}

@MainActor class Cart: ObservableObject {
    @Published var items: [CartItem]
    
    init() {
        items = []
    }
    
    func add(_ item: CartItem) -> Void {
        items.append(item)
    }
    
    func getTotal(_ addOns: Int = 0) -> Int {
        return 69 + addOns
    }
    
//    func getTotal() -> Float {
//        var total: Float = 0.00
//
//        for item in items {
//            total += item.price
//        }
//
//        return total
//    }
//
//    func calcTax() -> Float {
//        return getTotal() * 0.06
//
//    }
    

}


