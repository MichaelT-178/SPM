//
//  RentalViewInfo.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 10/20/22.
//


//Names of images
//let images: [String] = ["tritoon", "pontoon", "GiftCard"]
//
//Navigation Views
//let boatViews = [
//    AnyView(TritoonView()),
//    AnyView(PontoonView()),
//    AnyView(GiftCardView())
//] as! [AnyView]
//
//Information for boat overlays
//let info: [String] = [
//    "Daytime Tritoon Rental,Up to 13 Passengers • Captained\nCharters,Book",
//    "Sunset Rental,Up to 13 Passengers • Captained\nCharters,Book",
//    "Gift Card,Give them an experience they'll\nremember!,Buy"
//]


//    var body: some View {
//
//        NavigationView
//        {
//            VStack
//            {
//
//                VStack
//                {
//                    shakyPaleRed
//                        //.frame(width: UIScreen.screenWidth * 1.0256, height: UIScreen.screenHeight * 0.1955)
//                        .frame(width: 400, height: 165)
//                        .position(x: 200, y: -24)
//
//                    Text("Reserve a Rental")
//                        .font(.system(size: 36, weight: .heavy)) //Size was 35
//                        .foregroundColor(.white)
//                        .position(x: 160, y: -7)
//
//                }
//
//
//                ForEach(BoatCards) { boat in
//                    NavigationLink(destination: boat.view) {
//                        Image(boat.pic)
//                            .resizable()
//                            //.frame(width: 368, height: 200)
//                            .frame(width: UIScreen.screenWidth * 0.944, height: UIScreen.screenHeight * 0.237)
//                            .border(.black, width: 2)
//                            .brightness(-0.021)
//                            .overlay(
//                                BoatOverlay(BoatInfo: boat.info),
//                                alignment: .bottomLeading
//                            )
//                    }
//                    Spacer()
//                        //.frame(height: UIScreen.screenHeight * 0.0110)
//                        .frame(height: 9.25)
//                }
//
//                Spacer()
//                    //.frame(height: UIScreen.screenHeight * 0.0118) //was 11
//                    .frame(height: 10) //was 11
//
//            }
//        }
//    }
//}
