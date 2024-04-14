
//        NavigationView {
//            VStack {
//
//
//                shakyPaleRed
//                    .frame(width: 400, height: 165)
//                    .overlay(
//                        Text("Shaky Pale Marine")
//                            .font(.system(size: 35, weight: .heavy))
//                            .foregroundColor(.white)
//                            .padding(.leading, 22),
//
//                        alignment: .bottomLeading
//
//                    )
//
//
//
//
//                VStack {
//                    Image("pontoon")
//                        .resizable()
//                    //.frame(width: 360, height: 195)
//                        .frame(width: UIScreen.screenWidth * 0.923, height: UIScreen.screenHeight * 0.231)
//                        .border(Color.black, width: 1)
//
//                    Spacer()
//                        .frame(height: 10)
//
//                    List
//                    {
//                        Section
//                        {
//                            ForEach(menu) { menuItem in
//                                NavigationLink(destination: menuItem.destination) {
//                                    Label {
//                                        Text(menuItem.text)
//                                    } icon: {
//                                        Image(systemName: menuItem.picture)
//                                            .foregroundColor(shakyPaleRed)
//                                    }
//                                }
//                            }
//                        } header: {
//                            Text("**Information**")
//                                .font(.system(size: 21))
//                                .offset(x: -15)
//
//                            //
//                        }
//                        .headerProminence(.increased)
//
//                    }
//                    .listStyle(GroupedListStyle())
//                    //.frame(width: 350, height: 500)
//                    .frame(width: UIScreen.screenWidth * 0.8974, height: UIScreen.screenHeight * 0.59241)
//
//                }//.offset(y: 15)
//            }.background(veryLightGray)
//        }

//let menuLists = [
//    ["sailboat.fill", "Our Fleet"],
//    ["note.text", "Reviews"],
//    ["dollarsign", "Our Prices"],
//    ["questionmark", "FAQ"],
//    ["person.fill", "About Us"],
//    ["phone.fill", "Contact Us"]
//]
//
//let views = [
//
//    AnyView(OurFleet()),
//    AnyView(Reviews()),
//    AnyView(OurPrices()),
//    AnyView(FAQ()),
//    AnyView(AboutUs()),
//    AnyView(ContactUs())
//
//] as! [AnyView]

//    Color code is #F2F2F7
//    if #available(iOS 16.0, *) {
//        List {
//            NavigationLink("HelloZero") {
//                //pass
//                EmptyView()
//
//            }
//            .font(.system(size: 36))
//            .listRowBackground(shakyPaleRed)
//            .listRowSeparatorTint(.purple)
//
//            Text("Hello")
//            Text("Hello")
//            Text("Hello")
//            Text("Hello")
//            Text("Hello")
//        }.scrollContentBackground(.hidden)
//            .offset(y: 750)
//    } else {
//        // Fallback on earlier versions
//        //.background(.clear)
//    }




//TABBAR FORMATTING
//        .onAppear {
//            let lightGrayColor = UIColor(red: 0.816, green: 0.816, blue: 0.816, alpha: 1)
//            let appearance = UITabBarAppearance()
//            appearance.backgroundColor = UIColor(.red) //lightGrayColor
//            appearance.shadowColor = UIColor(.black)
//            UITabBar.appearance().scrollEdgeAppearance = appearance
//        }

//        UITabBar.appearance().tintColor = lightGrayColor
//        UITabBar.appearance().isSpringLoaded = false
        
        
       
        
//        let appearance = UITabBarAppearance()
//        appearance.backgroundColor = UIColor(Color.white)
//        appearance.shadowColor = UIColor(Color.orange)
//        UITabBar.appearance().scrollEdgeAppearance = appearance
        
//        appearance.configureWithOpaqueBackground()
////        appearance.backgroundColor = lightGrayColor
////        appearance.barTintColor = lightGrayColor
//        //appearance.tintColor = lightGrayColor
//        appearance.shadowColor = lightGrayColor
//        UITabBar.appearance().scrollEdgeAppearance = appearance
////        UITabBar.appearance().backgroundColor = lightGrayColor
