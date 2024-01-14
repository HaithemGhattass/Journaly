//
//  Extensions.swift
//  Journaly
//
//  Created by haithem ghattas on 14/1/2024.
//

import SwiftUI
struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
extension View {
    func cornerRadius(_ radius:CGFloat,cornerns:UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius,corners: cornerns))
    }
}
