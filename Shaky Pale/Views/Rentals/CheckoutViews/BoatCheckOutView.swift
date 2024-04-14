//
//  BoatCheckOutView.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/13/23.
//

import SwiftUI

struct BoatCheckOutView: View {
    
    //@Environment(\.dismiss) var dismiss
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var bindingToRoot: Binding<PresentationMode>
    @Binding var isCheckOutShowing: Bool
    
    //let boatItem:
    
    @State var currentDate: Date = Date()
    @State var isWeekend = false
    @State var selectedDate: Date = Date()
    
    //Ensures the user actually selects a date and doesn't
    //Submit current date without selection
    @State var userSelectedDate: Bool = false
    
    @State private var selectedButton = false
    
    @State private var morningSelected = false
    @State private var afternoonSelected = false
    @State private var eveningSelected = false
    
    @State private var numOfHours: Int = 2
    
    @State private var addOnPrice: Double = 0.00
    
    @State private var addOns = [
        AddOn(name: "Drinks", price: 25, isChecked: false),
        AddOn(name: "Cooler", price: 15, isChecked: false),
        AddOn(name: "Water Toys", price: 10, isChecked: false)
    ]
    
    @State private var savedAddOns: [AddOn] = []
    
    @State private var showingPaymentForm = false
    
    @State private var optionalMessage = ""
    @State private var isMessagePopUpShowing = false
    
    
    
    let darkBlue = Color(red: 0.169, green: 0.110, blue: 0.718)
    let silver = Color(red: 0.753, green: 0.753, blue: 0.753)
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 0) {
                //CustomNavBar(title: "CHECK OUT", subTitle: "Nice", backButton: presentationMode)
                
                HStack {
                    
                    
                    Text("Check Out")
                        .foregroundColor(.white)
                        .font(.system(size: 28, weight: .bold))
                        .padding(.leading, 12)
                    
                    Spacer()
                    
                    Button {
                        //dismiss()
                        isCheckOutShowing = false
                    } label: {
                        
                        ZStack {
                            Circle()
                                .fill(.black)
                                .frame(width: 31, height: 31)
                            
                            Image(systemName: "xmark")
                                .renderingMode(.template)
                                .font(.system(size: 24))
                            //.foregroundColor(.white)
                        }
                        
                    }
                    .padding(.trailing, 12)
                    
                }.frame(width: UIScreen.main.bounds.width)
                    .padding(.top, 45)
                    .padding(.bottom, 7)
                    .background(Color.shakyPaleGreen)
                
                ScrollView(showsIndicators: false) {
                    
                    VStack(spacing: 12) {
                        
                        VStack(spacing: 0) {
                            CustomDatePicker(currentDate: $currentDate,
                                             selectedDate: $selectedDate,
                                             isWeekend: $isWeekend)
                            
                            TimeOfWeekAndHours(isWeekend: $isWeekend,
                                               selectedDate: $selectedDate,
                                               numOfHours: $numOfHours)
                        }
                        
                        DisplayPrices()
                        
                        TimeSelectionButtons(date: selectedDate,
                                             numOfHours: numOfHours,
                                             nineSelected: $morningSelected,
                                             twoSelected: $afternoonSelected,
                                             sevenSelected: $eveningSelected)
                        
                        AddOnSelector(addOns: $addOns, addOnPrice: $addOnPrice, savedAddOns: $savedAddOns)
                        
                        
                        Button {
                            isMessagePopUpShowing.toggle() 
                        } label: {
                            VStack {
                                HStack {
                                    Text("Appointment Notes")
                                        .font(.system(size: 18, weight: .bold))
                                        .foregroundColor(.black)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "plus")
                                        .imageScale(.medium)
                                }
                            }
                            .padding([.top, .bottom], 10)
                            .padding(.leading, 10)
                            .padding(.trailing, 12)
                            
                        }.background(.white)
                        
                        OrderSummary(selectedDate: selectedDate,
                                     numOfHours: numOfHours,
                                     addOnPrice: addOnPrice,
                                     isWeekend: isWeekend,
                                     morningSelected: morningSelected,
                                     afternoonSelected: afternoonSelected,
                                     eveningSelected: eveningSelected)
                        
                        VStack {
                            Spacer()
                            Button("Check Out") {
                                showingPaymentForm.toggle()
                            }
                            .buttonStyle(ButtonFormat(isDisabled: !timeHasBeenSelected() || selectedDate == Date()))
                            .padding(.top, 14.5)
                            .frame(maxWidth: .infinity)
                            .padding(.bottom, 14.5)
                            .background(.white)
                            .disabled(!timeHasBeenSelected() || selectedDate == Date())
                            
                        }
                        
                        //Text("\n")
                        
                    }
                }
                .background(Color.appleLightGray.ignoresSafeArea())
                .sheet(isPresented: $showingPaymentForm) {
                    PaymentForm(isShowing: $showingPaymentForm,
                                isCheckOutShowing: $isCheckOutShowing,
                                bindingToRoot: bindingToRoot)
                }
                
            } //top most VStack
            .edgesIgnoringSafeArea(.top)
            .onAppear {
                print("MORNING SELECTED \(morningSelected)")
            }
            
            
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

            
        }
        
        
        
        
        
        
        
    } //
    
    func timeHasBeenSelected() -> Bool {
        return morningSelected || afternoonSelected || eveningSelected
    }
}

