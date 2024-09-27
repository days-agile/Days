//
//  SignOptions.swift
//  Days
//
//  Created by Manuel Bautista on 9/25/24.
//

import SwiftUI

struct ExitButtonModifier: ViewModifier {    
    func body(content: Content) -> some View {
        content
            .padding([.top], 30)
            .padding([.leading], 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

extension View {
    func exitButtonStyle() -> some View {
        self.modifier(ExitButtonModifier())
    }
}

struct SignUpView: View {
    var body: some View {
        
        NavigationView {
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
                    
                    Text("MORE YOURSELF EVERYDAY")
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
                            // Apple button action
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
                            // Google button action
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
                        
                        // Button 4: Log in
                        Button(action: {
                            // Button action
                        }) {
                            HStack {
                                
                                Text("Log in")
                                    .font(.headline)
                                    .foregroundColor(.white)
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
}

#Preview {
        SignUpView()
}
