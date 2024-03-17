//VStack
//{
//    //Header
//    VStack {
//        shakyPaleRed
//            .frame(width: 500, height: 165)
//            .position(x: 200, y: -62.4)
//        
//        Text("Daytime Tritoon Rental")
//            .font(.system(size: 30, weight: .bold))
//            .foregroundColor(.black)
//            .position(x: 200, y: -82)
//        
//        Text("Up to 13 Passengers • Captained Charters")
//            .font(.system(size: 18, weight: .light))
//            .foregroundColor(silver)
//            .position(x: 200, y: -110)
//        
//        Image("tritoon")
//            .resizable()
//            //.frame(width: 400, height: 177)
//            .frame(width: 400, height: UIScreen.screenHeight * 0.20971)
//            .position(x: 196, y: -62.25)
//    }
//    
//    
//    VStack(alignment: .leading, spacing: 11.5)
//    {
//        Text("Our 23 foot Luxury Tritoons are designed \nwith your comfort in mind!")
//            .font(.system(size: 18, weight: .heavy))
//            .fixedSize(horizontal: false, vertical: true)
//        
//        VStack(alignment: .leading, spacing: 3) {
//            Text("About")
//                .font(.system(size: 17, weight: .heavy))
//            
//            Text("Spend your day on the lake basking in the sun or beneath \nthe shade of the bimini. Equipped with 200 horsepower \nengines, our boats can keep up with the best of them.").font(.system(size: 14))
//                .lineSpacing(0.15)
//            
//        }.fixedSize(horizontal: false, vertical: true)
//        
//        
//        VStack(alignment: .leading, spacing: 3) {
//            Text("Boat Info")
//                .font(.system(size: 17, weight: .heavy))
//            
//            Group {
//                Text("•Capacity: 14 passengers")
//                Text("•Engine: 200HP")
//            }.font(.system(size: 14))
//                .lineSpacing(0.1)
//        }
//        
//        VStack(alignment: .leading, spacing: 3) {
//            Text("What's Included")
//                .font(.system(size: 17, weight: .heavy))
//            
//            Group {
//                Text("•Integrated bluetooth speakers")
//                Text("•LED lights")
//                Text("•Bimini cover")
//                Text("•Captain included")
//                Text("•Tax included")
//            }.font(.system(size: 14))
//                .lineSpacing(0.05)
//            
//        }
//        
//        VStack(alignment: .leading, spacing: 3) {
//            Text("About")
//                .font(.system(size: 17, weight: .heavy))
//            Text("Gas & Parking not included")
//                .font(.system(size: 14))
//            
//        }
//        
//    }.position(x: 203, y: 173)
//    
//    //Button
//    VStack {
//        Button("Reserve Now") {
//            open.toggle()
//        }
//        .buttonStyle(ButtonFormat())
//        .position(x: 197, y: 175)
//        .fullScreenCover(isPresented: $open) {
//            TritoonSheet()
//        }
//    }
//    
//}
