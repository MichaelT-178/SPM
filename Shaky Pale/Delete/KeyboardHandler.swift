////
////  Keyboard.swift
////  Shaky Pale
////
////  Created by Michael Totaro on 5/23/23.
////
//
//import SwiftUI
//import Combine
//
//class KeyboardResponder: ObservableObject {
//    private var keyboardWillChangeFrameNotification: AnyCancellable?
//    
//    @Published var keyboardHeight: CGFloat = 0
//    
//    init() {
//        keyboardWillChangeFrameNotification = NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
//            .compactMap { notification -> CGRect? in
//                guard let userInfo = notification.userInfo else { return nil }
//                guard let keyboardFrame = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return nil }
//                guard let isLocal = userInfo[UIResponder.keyboardIsLocalUserInfoKey] as? Bool else { return nil }
//                
//                return isLocal ? keyboardFrame : nil
//            }
//            .map { $0.height }
//            .receive(on: DispatchQueue.main)
//            .assign(to: \.keyboardHeight, on: self)
//    }
//    
//    deinit {
//        keyboardWillChangeFrameNotification?.cancel()
//    }
//    
//    func hideKeyboard() {
//        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
//        DispatchQueue.main.async { self.keyboardHeight = 0 }
//    }
//}
