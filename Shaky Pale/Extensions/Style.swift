//
//  Style.swift
//  Shaky Pale
//
//  Created by Michael Totaro on 8/20/23.
//

import SwiftUI

//Allows you to change the radius of specific corners in a view. Ex: VStack{}.cornerRadius(10, [.topLeft, .topRight])
//See View for extension
struct CornerRadiusStyle: ViewModifier {

    var radius: CGFloat
    var corners: UIRectCorner
    
    struct CornerRadiusShape: Shape {
        var radius = CGFloat.infinity
        var corners = UIRectCorner.allCorners
        
        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            return Path(path.cgPath)
        }
    }
    
    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}
