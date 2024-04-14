//
//  GiftCardView.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 7/15/23.
//

import SwiftUI

struct GiftCardView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State private var btnOneSelected = false
    @State private var btnTwoSelected = false
    @State private var btnThreeSelected = false
    @State private var btnFourSelected = false
    @State private var custom = false
    
    @State private var total: Double = -1.00
    @State private var customAmount: Double = -1.00
    
    @State private var recipientName = ""
    @State private var recipientEmail = ""
    @State private var optionalMessage = ""
    
    @State private var customError = false
    @State private var nameError = false
    @State private var emailError = false

    @State private var isValidOrder = false
    @State private var isMessagePopUpShowing = false
    
    @State var phoneNumber = ""

    var body: some View {
        
        ZStack {
            
            let helper = GiftCardHelper(btnOneSelected: btnOneSelected, btnTwoSelected: btnTwoSelected,
                                         btnThreeSelected: btnThreeSelected, btnFourSelected: btnFourSelected,
                                         customAmount: customAmount, recipientName: recipientName,
                                         recipientEmail: recipientEmail)
            
            NavigationView {
                GeometryReader  { geo in
                    
                    VStack(spacing: 0) {
                        
                        CustomNavBar(
                            title: "Gift Card",
                            subTitle: "Give them an experience they'll remember!",
                            backButton: presentationMode
                        )
                        
                        ScrollView(showsIndicators: false)
                        {
                            ScrollViewReader { proxy in
                                VStack(spacing: 10)
                                {
                                    VStack(spacing: 0) {
                                        ImageSection(name: "GiftCard")
                                        
                                        //Header
                                        Text("Purchase the perfect gift: a gift card with \na value of your choosing!")
                                            .font(.system(size: 18, weight: .heavy))
                                            .padding([.top, .bottom], 4.5)
                                            .padding([.leading, .trailing], 11)
                                            .frame(maxWidth: .infinity)
                                            .background(.white)
                                    }
                                    
                                    
                                    VStack {
                                        ChooseAmountComponent(
                                            buttonOne: $btnOneSelected,
                                            buttonTwo: $btnTwoSelected,
                                            buttonThree: $btnThreeSelected,
                                            buttonFour: $btnFourSelected,
                                            custom: $custom,
                                            total: $total
                                        )
                                        
                                        if custom {
                                            CurrencyField(placeHolderText: "Enter amount", amount: $customAmount, error: $customError)
                                                .id(1)
                                                .onTapGesture {
                                                    print("")
                                                    proxy.scrollTo(1, anchor: .bottom)
                                                }
                                                .padding(.bottom, 7)
                                        }
                                    }.frame(maxWidth: .infinity)
                                        .background(.white)
                                    
                                    VStack(spacing: 6) {
                                        
                                        HStack {
                                            Text("Recipient Info")
                                                .font(.system(size: 21, weight: .semibold))
                                            Spacer()
                                        }.padding(.leading, 25)
                                        
                                        VStack(spacing: 10) {
                                            
                                            PhoneNumberField(phoneNumber: $phoneNumber)
                                            
                                            
                                            
                                            RegularField(placeHolderText: "Enter name", text: $recipientName, error: $nameError, lettersOnly: true)
                                                .onTapGesture {
                                                    print("NAME")
                                                    proxy.scrollTo(3, anchor: .bottom)
                                                }
                                            
                                            RegularField(placeHolderText: "Enter email", text: $recipientEmail, error: $emailError)
                                                .id(3)
                                                .onTapGesture {
                                                    print("EMAIL")
                                                    proxy.scrollTo(3, anchor: .bottom)
                                                }
                                        }
                                        
                                    }.padding([.top, .bottom], 12)
                                        .background(.white)
                                    
                                    MessageButton(messageShowing: $isMessagePopUpShowing)
                                    
                                    GiftCardOrderSummary()
                                    
                                    
                                    VStack {
                                        Spacer()
                                        Button("Buy Now") {
                                            //isShowingMessagePopUp.toggle()
                                            print("BUY NOW PRESSED")
                                        }
                                        .buttonStyle(ButtonFormat(diffColor: Color.shakyPaleGreen))
                                        .padding(.top, 14.5)
                                        .frame(maxWidth: .infinity)
                                        .padding(.bottom, 14.5)
                                        .background(.white)
//                                        .buttonStyle(ButtonFormat(diffColor: Color.shakyPaleGreen, isDisabled: helper.allFieldsValid() == false))
//                                        .disabled(helper.allFieldsValid() == false)
                                    }
                                }
                            }
                            
                            Text("\n")
                            
                        }//ScrollView Ends
                    }
                    .background(Color.appleLightGray)
                    
                    
                }.edgesIgnoringSafeArea(.top) // GeometryReader ends
            }.navigationBarBackButtonHidden(true) // NavigationView Ends
             .hiddenTabBar()
            
            if isMessagePopUpShowing {
                Color.black.opacity(0.5)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isMessagePopUpShowing = false
                    }
                
                VStack(spacing: 0){
                    Spacer()
                    
                    MessagePopUpField(messageText: $optionalMessage, messageShowing: $isMessagePopUpShowing)
                    //.adaptsToKeyboard()
                        .gesture(
                            DragGesture()
                                .onChanged { gest in UIApplication.shared.sendAction(
                                        #selector(UIResponder.resignFirstResponder),
                                        to: nil, from: nil, for: nil
                                    )
                                    
                                    isMessagePopUpShowing = false
                                }
                        )
                }
                .ignoresSafeArea(.container)
                
            }
            

        } //ZStack Ends
    }
    
}

struct GiftCardView_Previews: PreviewProvider {
    static var previews: some View {
        GiftCardView()
    }
}

