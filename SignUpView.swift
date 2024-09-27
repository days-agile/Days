//
//  SignOptions.swift
//  Days
//
//  Created by Manuel Bautista on 9/25/24.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
       
        VStack(alignment: .leading, spacing: 20) {
            
            // Exit button
            HStack {
                Button(action: {
                    // Exit button action here
                }) {
                    Image(systemName: "x.circle.fill")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        
                   
                }
            }
            .padding([.top], 30)
            .padding([.leading], 20)

            Spacer()

            // App name and sign up instruction
            VStack(spacing: 20) {
                Text("days")
                    .font(.system(size: 86))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("Create an account to track daily goals.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .opacity(0.8)
            }


            // Sign up and log in buttons
            VStack(spacing: 20) {
                Button(action: {
                    // Action for sign up
                }) {
                    Text("Sign up")
                        .foregroundColor(.blue)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(10)
                }

                Button(action: {
                    // Action for log in
                }) {
                    Text("Log in")
                        .foregroundColor(.white)
                }
            }
            .padding()
            
            Spacer()
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color(hex: "#7F9DC7"), Color(hex: "#102491")]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
