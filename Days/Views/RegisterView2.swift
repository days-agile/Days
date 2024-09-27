//
//  CustomLocation.swift
//  Days
//
//  Created by Manuel Bautista on 11/4/24.
//

import SwiftUI

struct RegisterView2: View {


    var body: some View {
       
        GeometryReader { geometry in
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(hex: "#7F9DC7"), Color(hex: "#102491")]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VisualEffectBlur(blurStyle: .systemMaterialDark)
                    .opacity(0.3) // Set opacity for low transparency
                    .edgesIgnoringSafeArea(.all)
                
                VStack (alignment: .leading, spacing: 20){
                    
                    // Back button
                    HStack {
                        Button(action: {
                            // Back button action here
                        }) {
                            Image(systemName: "chevron.backward.circle.fill")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                        }
                        .exitButtonStyle()
                    }
                    
                    Text("Where are you from?")
                        .font(.headline)
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom, 50.0)

                                        
                    Text("Location is used for sunrise, sunset, and day length calculations. Your data is never shared. Learn more ")
                        .font(.caption)
                        .foregroundColor(Color.white)
                }
                .padding(.bottom, 400.0)

                VStack {
                    Spacer() // This will push the button to the bottom
                    Button(action: {
                        // Continue button action here
                    }) {
                        Text("Enable Location")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 350, height: 45)
                            .background(Color.blue)
                            .cornerRadius(50)
                    }
                    // Button 2: Log in
                    Button(action: {
                        // Button action
                    }) {
                        HStack {
                            
                            Text("Or Search for a city")
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                        .padding(22)
                        .frame(width: 350, height: 45)
                        .background(
                            VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark)
                                .opacity(0.0)
                                .brightness(-0.11)
                        )
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color(hex: "#A3A3A3"), lineWidth: 0)
                        )
                    }
                }
                .padding(.horizontal, 20)
                
            }
        }
    }
}

struct RegisterView2_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView2()
    }
}
