//NavigationView {
//    GeometryReader  { g in
//        
//        VStack(spacing: 11)
//        {
//            VStack
//            {
//                Text("Reserve a Rental")
//                    .font(.system(size: 36, weight: .heavy))
//                    .foregroundColor(.white)
//                    .padding(.trailing, 62)
//                    .padding(.top, g.size.height * 0.064) //Roughly 55 for iphone 14 (844.0 Height)
//                
//            }.frame(width: g.size.width, height: g.size.height * 0.13)
//             .background(shakyPaleRed)
//            
//            
//            ForEach(BoatCards) { boat in
//                NavigationLink(destination: boat.view) {
//                    Image(boat.pic)
//                        .resizable()
//                        .frame(width: g.size.width * 0.944, height: g.size.height * 0.237) //w: 368 h: 200
//                        .border(.black, width: 2)
//                        .brightness(-0.021)
//                        .overlay(
//                            BoatOverlay(BoatInfo: boat.info),
//                            alignment: .bottomLeading
//                        )
//                }
//            }
//            
//        } //TopMost VStack Ends
//    }.ignoresSafeArea() // GeometryReader ends
//} // NavigationView Ends
