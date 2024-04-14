////
////  FAQ.swift
////  Shaky Pale
////
////  Created by Michael Totaro on 11/12/22.
////
//
//import SwiftUI
//
//struct FAQ: View {
//
//    //https://serialcoder.dev/text-tutorials/swiftui/disclosure-group-in-swiftui/
//
//    //https://stackoverflow.com/questions/59158476/how-to-have-text-in-shapes-in-swiftui
//
//    @StateObject private var expansionHandler = ExpansionHandler<Int>()
//    @StateObject private var expansionHandlerTwo = ExpansionHandler<Int>()
//
//    var body: some View {
//        let shakyPaleGray = Color(red: 0.129, green: 0.145, blue: 0.161)
//        let appleGray = Color(red: 0.933, green: 0.933, blue: 0.933)
//        let lightRed = Color(red: 1.000, green: 0.000, blue: 0.000)
//
//
//        ScrollView(showsIndicators: false)
//        {
//            VStack
//            {
//
//                VStack
//                {
//                    Text("Rental Questions")
//                        .position(x: 83)
//                        .font(.system(size: 20))
//                        .offset(y: 10)
//
//                    ForEach(0...questions.count - 1, id: \.self) { i in
//                        DisclosureGroup(
//                            isExpanded:
//                                self.expansionHandler.isExpanded(i),
//                            content: {
//                                whiteAnswerSquare(answer: answers[i], lines: numLines[i])
//                            },
//                            label: {
//                                Text("  " + questions[i])
//                            }
//                        )
//                        .contentShape(Rectangle())
//                        .onTapGesture { self.expansionHandler.toggleExpanded(for: i) }
//                        .background(shakyPaleGray)
//                        .frame(width: 350)
//                        .tint(self.expansionHandler.isExpanded(i).wrappedValue ? lightRed : Color.white)
//                        .padding(1)
//                    }
//                }.offset(y: 25)
//
//                VStack
//                {
//
//                    Text("Pricing Questions")
//                        .position(x: 84)
//                        .font(.system(size: 20))
//                        .offset(y: 10)
//
//                    ForEach(0...pQuestions.count - 1, id: \.self) { i in
//                        DisclosureGroup(
//                            isExpanded:
//                                self.expansionHandlerTwo.isExpanded(i),
//                            content: {
//                                whiteAnswerSquare(answer: pAnswers[i], lines: pNumLines[i])
//                            },
//                            label: {
//                                Text("  " + pQuestions[i])
//                                    .multilineTextAlignment(.leading) // properly format "bad weather" question.
//
//                            }
//                        )
//                        .contentShape(Rectangle())
//                        .background(shakyPaleGray)
//                        .frame(width: 350)
//                        .tint(self.expansionHandlerTwo.isExpanded(i).wrappedValue ? lightRed : Color.white)
//                        .padding(1)
//
//
//                    }
//                }.offset(y: 50)
//
//                Text("\n\n\n\n\n\n\n\n") //Add Extra Spaces to bottom for scroll View
//
//            } //Top VStack ends
//        } //Scroll View Ends
//        .overlay(
//            VStack {
//                let shakyPaleRed = Color(red: 0.741, green: 0.024, blue: 0.000)
//
//                shakyPaleRed
//                    .frame(width: 500, height: 165)
//                    .position(x: 200, y: -83)
//
//                Text("FAQ")
//                    .font(.system(size: 35, weight: .heavy))
//                    .foregroundColor(.white)
//                    .position(x: 180, y: -350)
//            }
//        ).padding()
//         .background(.purple)
//    } //Entire View Ends
//
//
//    @ViewBuilder
//    private func whiteAnswerSquare(answer: String, lines: Int) -> some View {
//
//        let darkWhite = Color(red: 0.965, green: 0.965, blue: 0.965)
//        let shakyPaleGray = Color(red: 0.129, green: 0.145, blue: 0.161)
//
//        Rectangle()
//            .fill(darkWhite)
//            .frame(width: 350, height: CGFloat((lines * 22) + 35))
//            .border(shakyPaleGray, width: 0.25)
//            .overlay(
//                Text(.init(answer))
//                    .padding([.leading, .trailing], 16)
//                    .foregroundColor(.black)
//            )
//    }
//}
//
//
//struct FAQ_Previews: PreviewProvider {
//    static var previews: some View {
//        FAQ()
//    }
//}
//
//
