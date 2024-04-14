//
//  FAQInfo.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 11/20/22.
//

import SwiftUI

struct Section: Identifiable {
    var id = UUID()
    var Q: String
    var A: String
}

let rental: [Section] = [
    
    Section(Q: "Where are you located?",
            A: "We are located on beautiful Lake Travis, just outside of Austin Texas. If you book with us " +
               "we will meet you at **4370 Mansfield Dam Park Rd. Austin, TX. 78732.** Don’t forget, tell " +
               "everyone to bring $5 cash for parking!"),
    
    Section(Q: "Can we be picked up for our rental?",
            A: "We pride ourselves in being the most flexible rentals on the lake. Our main pickup spot is " +
               "mentioned above, but if you have an AirBnB with an accessible dock, or you're finishing up " +
               "lunch at one of our lakefront bars, we would be happy to meet you there!"),
    
    Section(Q: "What's included in our boat rental?",
            A: "Your rental includes a fully fueled boat with an experienced captain, and all the fun you " +
               "can find out on the lake! We can be very flexible, so if there’s something you’d like to " +
               "have on the boat when you get there, just let us know."),
    
    Section(Q: "What is a Sunset Cruise?",
            A: "A sunset cruise is a 3 hour rental we offer at the end of the day so that everyone can enjoy " +
               "the beautiful sunsets we have here on Lake Travis. They typically run from 7pm-10pm."),
    
    Section(Q: "How many passengers can fit on a boat?",
            A: "We can take 13 passengers along for the ride. As with any boat, weight and space are always " +
               "factors. Coolers, ice, water toys, etc. can be heavy and bulky. So keep that in mind when " +
               "packing for your day on the water."),
    
    Section(Q: "Can we bring food or alcohol on the boat?",
            A: "Absolutely! What would a lake day be without snacks and a few drinks?"),
    
    Section(Q: "Can we do watersports behind the boat?",
            A: "We do offer tube rentals. It's great for smaller groups, but with a full capacity boat we " +
               "suggest renting our Lilly Pad to float on instead."),
    
    Section(Q: "Can we bring pets onboard?",
            A: "The more the merrier! We do charge a pet fee, but we would love to meet your furry friends."),
    
    Section(Q: "Do the boats have speakers/bluetooth?",
            A: "They do! We’ll have you hooked up and playing your own music before we even leave the dock.")
    
]


let pricing: [Section] = [
    Section(Q: "Do we pay for gas?",
            A: "We ask our customers to replace the fuel used at the end of their rental. " +
               "Usually we just stop by the gas dock on our way to drop you off, but again, " +
               "we can be very flexible."),
    
    Section(Q: "Can we rent a boat without a captain?",
            A: "All of our rentals include a captain. This is to ensure the safety of our customers and our " +
               "boats. Lake Travis can be tricky to navigate in places, plus, the captains know all the spots!"),

    Section(Q: "Should we tip our captain?",
            A: "Tips are always appreciated, but never expected! It is a great way to tell your captain how well he did."),
    
    Section(Q: "Do we have to pay a deposit to reserve?",
            A: "We ask for the full amount of the rental in order to reserve your time slot, so no need for deposits " +
               "or multiple payments."),
    
    Section(Q: "What is the cancellation policy?",
            A: "We know plans change. You are welcome to cancel any time. If the cancellation is within 72 hours of " +
               "the rental time, we charge a $50 cancellation fee."),
   
    Section(Q: "Can we get a refund if there is bad weather?",
            A: "We always keep a close eye on the weather. If your captain thinks the weather is looking too bad to go " +
               "out, or if it is raining at the time of your rental, we will give a full refund. Either way, we will " +
               "contact you the day before.")
]
