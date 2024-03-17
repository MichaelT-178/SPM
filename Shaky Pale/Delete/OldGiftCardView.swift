////
////  GiftCardView.swift
////  Shaky Pale
////
////  Created by Michael Totaro on 11/20/22.
////
//
//import SwiftUI
//
//struct GiftCardView: View {
//
//    @EnvironmentObject var cart: Cart
//
//    @State private var custom = false
//
//    @State var total: Float = -5.23
//    @State var roundedTotal: Float = -5.23
//
//    @State private var isSelected = false
//    @State private var isSelectedTwo = false
//    @State private var isSelectedThree = false
//    @State private var isSelectedFour = false
//
//    @State private var showingAlert = false
//    @State private var successfulCheckout = false
//    @State private var customAmount = 349.00
//
//    @State private var recipientName = ""
//    @State private var recipientEmail = ""
//    @State private var message = ""
//
//    @FocusState private var isRecipientNameFieldFocused: Bool
//    @FocusState private var isRecipientEmailFieldFocused: Bool
//    @FocusState private var isMessageFieldFocused: Bool
//
//
//    var body: some View {
//        let darkBlue = Color(red: 0.169, green: 0.110, blue: 0.718)
//        let silver = Color(red: 0.753, green: 0.753, blue: 0.753)
//        let veryLightGray = Color(red: 0.898, green: 0.898, blue: 0.918)
//
//        //https://developer.apple.com/design/human-interface-guidelines/foundations/color/
//        //let veryLightGray = Color(red: 0.922, green: 0.922, blue: 0.941)
//        //let appleGray = Color(red: 0.949, green: 0.949, blue: 0.969)
//        //let appleGray = Color(red: 0.635, green: 0.667, blue: 0.678)
//
//
//        VStack
//        {
//
//            VStack {
//                darkBlue
//                    .frame(width: 400, height: 165)
//                    .position(x: 200, y: -62.4)
//
//                Text("Gift Card")
//                    .font(.system(size: 30, weight: .bold))
//                    .foregroundColor(silver)
//                    .position(x: 200, y: -45)
//
//                Text("Give them an experience they'll remember!")
//                    .font(.system(size: 18, weight: .light))
//                    .foregroundColor(silver)
//                    .position(x: 200, y: -35)
//
//                Image("GiftCard")
//                    .resizable()
//                    .border(.black, width: 0.2)
//                    .frame(width: 400, height: 160)
//                    .offset(y: -37.5)
//
//
//            }.onTapGesture { self.hideKeyboard() }
//
//
//            VStack(spacing: 9.5)
//            {
//                Text("Purchase the perfect gift: a gift card with \na value of your choosing!")
//                    .offset(y: custom ? 32 : 7) //COOl
//                    .font(.system(size: 18, weight: .heavy))
//                    .fixedSize(horizontal: false, vertical: true)
//
//
//                Group {
//                    Text("Choose Amount")
//                        .offset(x: -111, y: 2)
//                        .foregroundColor(isMessageFieldFocused && custom ? .white : .black)
//
//                    HStack(spacing: 20.25) {
//                        SelectButton(isSelected: $isSelected, amount: "Custom")
//                            .onTapGesture {
//                                total = 0.00
//                                custom.toggle()
//                                isSelected.toggle()
//                                if (isSelected) { isSelectedTwo = false; isSelectedThree = false; isSelectedFour = false }
//                            }
//
//                        SelectButton(isSelected: $isSelectedTwo, amount: "$349")
//                            .onTapGesture {
//                                isSelectedTwo.toggle()
//
//                                if (isSelectedTwo) { custom = false; isSelected = false;
//                                                     isSelectedThree = false; isSelectedFour = false }
//
//                                total = 349.0
//                            }
//
//                        SelectButton(isSelected: $isSelectedThree, amount: "$698")
//                            .onTapGesture {
//                                isSelectedThree.toggle()
//                                if (isSelectedThree) { custom = false; isSelected = false;
//                                                       isSelectedTwo = false; isSelectedFour = false }
//                                total = 698.0
//                            }
//
//                        SelectButton(isSelected: $isSelectedFour, amount: "$1,396")
//                            .onTapGesture {
//                                isSelectedFour.toggle()
//                                if (isSelectedFour) {
//                                    custom = false
//                                    isSelected = false
//                                    isSelectedTwo = false
//                                    isSelectedThree = false
//                                }
//                                total = 1396.0
//                            }
//                    }
//                }.offset(x: -10.5, y: custom ? 25 : 5)
//
//                if custom {
//                    Group {
//                        Text("Gift Amount:")
//                            .offset(x: -137)
//                            .foregroundColor( (isRecipientEmailFieldFocused || isRecipientNameFieldFocused) && custom ? .white : .black)
//
//                        TextField("", value: $customAmount, format: .currency(code: "USD"))
//                            .padding(.leading, 7.5)
//                            .border(isRecipientEmailFieldFocused && custom ? .white : .black)
//                            .frame(width: 95)
//                            .foregroundColor(isRecipientEmailFieldFocused && custom ? .white : .black)
//                            .offset(x: -137, y: -5) //y was -5
//                    }.offset(y: 20)
//
//                }
//
//                VStack {
//                    Rectangle()
//                        .fill(isRecipientNameFieldFocused ? veryLightGray : .white)
//                        .frame(width: 500, height: 60)
//                        .border(isRecipientNameFieldFocused ? .black : .white)
//                        .overlay(
//                            VStack {
//                                Text("Recipient name")
//                                    .offset(x: -124)
//
//
//                                TextField("", text: $recipientName)
//                                    .autocapitalization(.none)
//                                    .padding(.leading, 7.5)
//                                    .border(.black)
//                                    .background(.white)
//                                    .frame(width: 355)
//                                    .offset(x: -7.25, y: -5)
//                                    .focused($isRecipientNameFieldFocused)
//                                    .toolbar {
//                                        ToolbarItemGroup(placement: .keyboard) {
//                                            Button("Reset") {
//                                                if (isRecipientEmailFieldFocused)
//                                                {
//                                                    self.recipientEmail = ""
//                                                }
//
//                                                else if (isMessageFieldFocused)
//                                                {
//                                                    self.message = ""
//                                                }
//
//                                                else {
//                                                    self.recipientName = ""
//                                                }
//
//                                            }.tint(.red)
//
//                                            Button("Done") {
//                                                self.hideKeyboard()
//                                            }.tint(.blue)
//                                        }
//
//
//                                    }
//                            }
//                        )
//                }
//                .offset(y: isRecipientNameFieldFocused ? (custom ? -23 : 7.5) : 7.5)
//                .animation(.spring(), value: isRecipientNameFieldFocused)
//                .onTapGesture { self.hideKeyboard() }
//
//
//
//                VStack {
//                    Rectangle()
//                        .fill(isRecipientEmailFieldFocused ? veryLightGray : .white)
//                        .frame(width: 500, height: 60)
//                        .border(isRecipientEmailFieldFocused ? .black : .white)
//                        .overlay(
//                            VStack {
//                                Text("Recipient email")
//                                    .offset(x: -124)
//
//
//                                TextField("", text: $recipientEmail)
//                                    .autocapitalization(.none)
//                                    .padding(.leading, 7.5)
//                                    .border(.black)
//                                    .background(.white)
//                                    .frame(width: 355)
//                                    .offset(x: -7.25, y: -5)
//                                    .focused($isRecipientEmailFieldFocused)
//                            }
//                        )
//                }
//                .offset(y: isRecipientEmailFieldFocused ? (custom ? -92.1 : -62.25) : (custom ? -8 : 0)) //-57
//                .animation(.spring(), value: isRecipientEmailFieldFocused)
//                .onTapGesture { self.hideKeyboard() }
//
//                VStack {
//                    Rectangle()
//                        .fill(isMessageFieldFocused ? veryLightGray : .white)
//                        .frame(width: 500, height: 140)
//                        .border(isMessageFieldFocused ? .black : .white)
//                        .overlay(
//                            VStack {
//                                Group {
//                                    HStack {
//                                        Text("Message (Optional)")
//                                            .offset(x: -107)
//
//                                        (
//                                        Text("\(message.count)")
//                                            .foregroundColor(isMessageFieldFocused ? (message.count > 100 ? .red : .black) : .white)
//
//                                        +
//
//                                        Text("/100")
//                                            .foregroundColor(isMessageFieldFocused ? .black : .white)
//                                        )
//
//                                    }
//                                    textEditorView
//                                        .offset(x: -7.25, y: -5)
//                                        .focused($isMessageFieldFocused)
//
//                                }
//
//                            }
//                        )
//                }.offset(y: isMessageFieldFocused ? ( custom ? -242.5 : -211 ) : ( custom ? -20 : -9 ))
//                    .animation(.spring(), value: isMessageFieldFocused)
//
//
//            }.position(x: 203, y: 157)
//                .onTapGesture {
//                    self.hideKeyboard()
//
//                }
//
//            VStack {
//                Button("Buy Now") {
//
//                    if custom {
//                        total = Float(customAmount)
//                    }
//
//                    roundedTotal = round(total * 100) / 100.0
//
//                    if (roundedTotal <= 0 || recipientName == "" || !validEmail(recipientEmail)) {
//                        showingAlert = true
//                    } else {
//                        //do stuff
//                        successfulCheckout = true
//                    }
//
//                    print("Total is \(roundedTotal)")
//
//                    customAmount = 0.00 //???????
//                }
//                .alert("Please fill out fields correctly", isPresented: $showingAlert) {
//                    Button("Okay", role: .cancel) { }
//                }
//                .alert("Gift card added to cart!", isPresented: $successfulCheckout, actions: {
//                    Button("Okay", role: .cancel) { }
//                }, message: {
//                    Text("We'll send your digital gift card after checkout (amount: $\(roundedTotal, specifier: "%.2f"))")
//                })
//
//
//                .buttonStyle(ButtonFormat(diffColor: true))
//                .position(x: 197, y: 175)
//            }
//        }.ignoresSafeArea(.keyboard)
//
//    }
//}
//
//private extension GiftCardView {
//
//    var textEditorView: some View {
//        TextEditor(text: $message)
//            .frame(width: 355, height: 100)
//            .overlay {
//                RoundedRectangle(cornerRadius: 0)
//                    .stroke(.black)
//            }
//    }
//}
//
//func validEmail(_ emailString: String) -> Bool {
//
//    if emailString.count > 100 { return false }
//
//    let emailFormat = "(?:[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[\\p{L}0-9!#$%\\&'*+/=?\\^_`{|}" + "~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\" + "x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[\\p{L}0-9](?:[a-" + "z0-9-]*[\\p{L}0-9])?\\.)+[\\p{L}0-9](?:[\\p{L}0-9-]*[\\p{L}0-9])?|\\[(?:(?:25[0-5" + "]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-" + "9][0-9]?|[\\p{L}0-9-]*[\\p{L}0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21" + "-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])"
//
//    let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
//    return emailPredicate.evaluate(with: emailString)
//}
//
//
//#if canImport(UIKit)
//extension View {
//    func hideKeyboard() {
//        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//    }
//}
//#endif
//
//
//struct GiftCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        GiftCardView()
//            .environmentObject(Cart())
//    }
//}
