//
//  Splashview.swift
//  Days
//
//  Created by Manuel Bautista on 9/25/24.
//
import SwiftUI

struct Splashview: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(hex: "#68A3D6"), Color(hex: "#00009D")]), startPoint: .top, endPoint: .bottom)
                           .edgesIgnoringSafeArea(.all)
            
            Text("I love myself")
                .font(.system(size: 24, weight: .thin)) // Adjust the font size and weight as needed
                .foregroundColor(.white) // Adjust the text color as needed
        }
    }
}

#Preview {
    Splashview()
    }
