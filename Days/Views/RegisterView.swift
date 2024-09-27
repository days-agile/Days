//
//  CustomSignUp.swift
//  Days
//
//  Created by Manuel Bautista on 11/4/24.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color(hex: "#7F9DC7"), Color(hex: "#102491")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VisualEffectBlur(blurStyle: .systemMaterialDark)
                .opacity(0.9) // Set opacity for low transparency
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 20) {
                
                // Exit button
                HStack {
                    Button(action: {
                        // Exit button action here
                    }) {
                        Image(systemName: "x.circle.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .opacity(0.3)
                    }
                    .exitButtonStyle()
                }
            }
            
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Image("Battle-Royale")
                        .resizable()
                        .scaledToFit() // or .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 60.0) // Adds space on the left and right
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            
                
                Text("Create an account to track your healing journey.")
                    .bold()
                    .font(.system(size: 15))
                    .foregroundColor(.white)
                    .opacity(0.75)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.bottom, 20)

                
                VStack(spacing: 18) {
                    // Button 1: Sign up
                    Button(action: {
                        // Button action
                    }) {
                        HStack {
                            
                            Text("Sign up")
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                        .padding(22)
                        .frame(width: 300, height: 45)
                        .background(.white)
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color(hex: "#A3A3A3"), lineWidth: 0)
                        )
                        
                    }
                    
                    
                    Button(action: {
                        // Button action
                    }) {
                        HStack {
                            
                            Text("Continue with Apple")
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                        .padding(22)
                        .frame(width: 300, height: 45)
                        .background(.white)
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color(hex: "#A3A3A3"), lineWidth: 0)
                        )
                        
                    }
                    
                    Button(action: {
                        // Button action
                    }) {
                        HStack {
                            
                            Text("Continue with Google")
                                .font(.headline)
                                .foregroundColor(.black)
                        }
                        .padding(22)
                        .frame(width: 300, height: 45)
                        .background(.white)
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color(hex: "#A3A3A3"), lineWidth: 0)
                        )
                        
                    }
                    
                    Text("By signing up, you agree to our Terms of Service, Privacy Policy, and CA privacy.  We explain how to opt out of offers.")
                    .foregroundColor(.white)
                        .font(.system(size: 12))
                        .padding(.horizontal, 50)
                        .opacity(0.3)
                    
                    // Button 2: Log in
                    Button(action: {
                        // Button action
                    }) {
                        HStack {
                            
                            Text("Sign in")
                                .font(.headline)
                                .foregroundColor(.blue)
                        }
                        .padding(22)
                        .frame(width: 300, height: 45)
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
                    
                    Spacer(minLength: 00)
                    
                        Text("© Days Ltd Co")
                        .foregroundColor(.white)
                            .font(.system(size: 12))
                            .padding(.horizontal, 50)
                            .opacity(0.3)
                    
                } .frame(maxWidth: .infinity, alignment: .center)
                Spacer(minLength: 00)
                
            }

        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
