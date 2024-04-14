import SwiftUI

struct BoatCard: Identifiable {
    var id = UUID()
    var pic: String
    var view: AnyView
    var title: String
    var subtitle: String
    var blueTag: String
}

let BoatCards = [
    
    BoatCard(pic: "tritoon",
             view: AnyView(TritoonView()),
             title: "Daytime Tritoon Rental",
             subtitle: "Up to 13 Passengers • Captained\nCharters",
             blueTag: "Book"),

    BoatCard(pic: "pontoon",
             view: AnyView(PontoonView()),
             title: "Sunset Rental",
             subtitle: "Up to 13 Passengers • Captained\nCharters",
             blueTag: "Book"),
    
    BoatCard(pic: "GiftCard",
             view: AnyView(GiftCardView()),
             title: "Gift Card",
             subtitle: "Give them an experience they'll\nremember!",
             blueTag: "Buy")
    
]
