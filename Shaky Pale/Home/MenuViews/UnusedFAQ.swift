////
////  UnusedFAQ.swift
////  Shaky Pale
////
////  Created by Michael Totaro on 11/22/22.
////
//
//import SwiftUI
//import Foundation
//
//struct UnusedFAQ: View {
//    
//    //https://serialcoder.dev/text-tutorials/swiftui/disclosure-group-in-swiftui/
//    
//    //let shakyPaleGray = Color(red: 0.129, green: 0.145, blue: 0.161)
//    
//    @StateObject private var expansionHandler = ExpansionHandler<Int>()
//    
//    var body: some View {
//        
//        //            DisclosureGroup("What is shaky Pale? ", isExpanded: $isOpen) {
//        //                Text("Hello This is very cool. I like writing a lot. Yeet yeet yeet yete")
//        //                    .foregroundColor(.white)
//        //            }
//        //            .padding()
//        //            .background(RoundedRectangle(cornerRadius: 20)
//        //                .fill(Color.black)
//        //            )
//        //            .frame(width: 365)
//        //            .tint(isOpen ? Color.red : Color.white)
//        let shakyPaleGray = Color(red: 0.129, green: 0.145, blue: 0.161)
//        let spRed = Color(red: 0.702, green: 0.008, blue: 0.000)
//        
//        ScrollView {
//            
//            ForEach(0...questions.count - 1, id: \.self){ i in
//                DisclosureGroup(
//                    isExpanded:
//                        self.expansionHandler.isExpanded(i),
//                    content: {
//                        //                        Text(.init(answers[i])) //.init to format bold text
//                        //                            .foregroundColor(.black)
//                        //                        Spacer()
//                        disclosureGroupContent(answer: answers[i])
//                    },
//                    label: {
//                        Text(questions[i])
//                    }
//                )
//                .contentShape(Rectangle()) // Usability feature to have the whole item tappable, and not just the label/disclosure indicator
//                .onTapGesture {
//                    self.expansionHandler.toggleExpanded(for: i)
//                }
//                .contentShape(Rectangle())
//                //.padding()
////                .background(RoundedRectangle(cornerRadius: 20)
////                    .fill(Color.red)
////                )
//                .background(RoundedCorners(color: .blue, tl: 20, tr: 20, bl: 20, br: 20)) {
//                    .fill(Color.red)
//                }
//                //.background(shakyPaleGray)
//                .font(.custom("Seri", fixedSize: 15))
//                .frame(width: 365)
//                .onTapGesture {
//                    withAnimation { self.expansionHandler.toggleExpanded(for: i) }
//                }
//                .tint(self.expansionHandler.isExpanded(i).wrappedValue ? spRed : Color.white)
//                
//            }
//        }
//        
//        
//    }
//
//    
//    @ViewBuilder
//    func disclosureGroupContent(answer: String) -> some View {
//        HStack {
//            Text(.init(answer))
//                .italic()
//                .foregroundColor(.black)
//                .font(.custom("Seri", fixedSize: 15))
//            
//            //Spacer()
//        }
//        //.background(Color.blue)
//        .padding()
//        //.cornerRadius(50, corners: [.bottomLeft, .bottomRight])
//        //.cornerRadius(-100, corners: [.topLeft, .topRight])
//        //.contentShape(Rectangle())
//        //.padding()
////        .background(.cornerRadius(-100, corners: [.topLeft, .topRight])) {
////            .fill(Color.blue)
////        )
//        .background(RoundedCorners(color: .blue, tl: 0, tr: 0, bl: 20, br: 20))
//        
//        
//    }
//    }
//
//struct RoundedCorners: View {
//    var color: Color = .blue
//    var tl: CGFloat = 0.0
//    var tr: CGFloat = 0.0
//    var bl: CGFloat = 0.0
//    var br: CGFloat = 0.0
//    
//    var body: some View {
//        GeometryReader { geometry in
//            Path { path in
//                
//                let w = geometry.size.width
//                let h = geometry.size.height
//                
//                // Make sure we do not exceed the size of the rectangle
//                let tr = min(min(self.tr, h/2), w/2)
//                let tl = min(min(self.tl, h/2), w/2)
//                let bl = min(min(self.bl, h/2), w/2)
//                let br = min(min(self.br, h/2), w/2)
//                
//                path.move(to: CGPoint(x: w / 2.0, y: 0))
//                path.addLine(to: CGPoint(x: w - tr, y: 0))
//                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
//                path.addLine(to: CGPoint(x: w, y: h - br))
//                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
//                path.addLine(to: CGPoint(x: bl, y: h))
//                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
//                path.addLine(to: CGPoint(x: 0, y: tl))
//                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
//                path.closeSubpath()
//            }
//            .fill(self.color)
//        }
//    }
//}
//    //struct RoundedCorner: Shape {
//    //
//    //    var radius: CGFloat = .infinity
//    //    var corners: UIRectCorner = .allCorners
//    //
//    //    func path(in rect: CGRect) -> Path {
//    //        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
//    //        return Path(path.cgPath)
//    //    }
//    //}
//    //
//    //extension View {
//    //    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
//    //        clipShape( RoundedCorner(radius: radius, corners: corners) )
//    //    }
//    //}
//    
//    struct UnusedFAQ_Previews: PreviewProvider {
//        static var previews: some View {
//            UnusedFAQ()
//        }
//    }

