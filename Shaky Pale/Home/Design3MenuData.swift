//
//  Design2MenuData.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 5/31/23.
//

import SwiftUI

struct MenuItem: Identifiable {
    var id = UUID()
    var picture: String
    var text: String
    var destination: AnyView
}

let menu: [MenuItem] = [
    MenuItem(picture: "ferry",             text: "Our Fleet",    destination: AnyView( OurFleet()  )),
    MenuItem(picture: "mappin.circle",     text: "Our Location", destination: AnyView( AboutUs()   )),
    MenuItem(picture: "compass.drawing",   text: "Our Mission",  destination: AnyView( AboutUs()   )),
    MenuItem(picture: "person",            text: "About Us",     destination: AnyView( AboutUs()   )),
    MenuItem(picture: "dollarsign",        text: "Our Prices",   destination: AnyView( OurPrices() )),
    MenuItem(picture: "note.text",         text: "Reviews",      destination: AnyView( Reviews()   )),
    MenuItem(picture: "questionmark",      text: "FAQ",          destination: AnyView( FAQ()       )),
    MenuItem(picture: "phone",             text: "Contact Us",   destination: AnyView( ContactUs() )),
]

//Other ideas for "Our Mission" image: Lightbulb, target, pencil, sailboat

//I thought the compass made sense because it's like a symbol of creativity or ingenuity. Also, it just looks good
