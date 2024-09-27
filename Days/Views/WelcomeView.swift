//
//  WelcomeView2.swift
//  Days
//
//  Created by Manuel Bautista on 10/20/24.
//
import SwiftUI

struct WelcomeView: View {
    @State private var isTextVisible = false // Controls visibility of "Welcome"
    @State private var isSecondTextVisible = false // Controls visibility of second content
    @State private var isThirdTextVisible = false // Third Item (Goals?)
    @State private var isFourthTextVisible = false // Fourth Item (Continue?)
    @State private var offsetAmount: CGFloat = 0
    @State private var secondTextOffset: CGFloat = 200 // Initial position for second content
    
    func selectYourGoal(action: @escaping () -> Void, icon: String, text: String) -> some View {
        
        Button(action: {
            // Button action
        }) {
            HStack {
                Image(systemName: icon)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                
                Text(text)
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .padding(22)
            .frame(width: 350, height: 45, alignment: .leading)
            .background(
                VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark)
                    .opacity(0.7)
                    .brightness(-0.11)
            )
            .cornerRadius(50)
            .overlay(
                RoundedRectangle(cornerRadius: 50)
                    .stroke(Color(hex: "#A3A3A3"), lineWidth: 1)
            )
        }
    }

    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(gradient: Gradient(colors: [Color(hex: "#7F9DC7"), Color(hex: "#102491")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            // First Text: "Thank you for coming..."
            Text("Thank you for coming...")
                .font(.title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .offset(y: offsetAmount) // Move upwards
                .opacity(isTextVisible ? 1 : 0) // Fade in/out based on state
                .padding(.top, 30)     // Top padding
                .padding(.leading, 20) // Leading padding
                .onAppear {
                    // Step 1: Fade in
                    withAnimation(.easeInOut(duration: 2)) {
                        isTextVisible = true
                    }

                    // Step 2: Wait for 2 seconds
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        // Step 3: Fade out and rise
                        withAnimation(.easeInOut(duration: 2)) {
                            isTextVisible = false
                            offsetAmount = -100 // Move text upwards as it fades out
                        }

                        // Step 4: Show the second content after another 2 seconds
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            withAnimation(.easeInOut(duration: 2)) {
                                isSecondTextVisible = true
                                secondTextOffset = 0 // Move second content into view
                            }
                        }
                    }
                }
            
            // Second Text Content and Buttons
            VStack(alignment: .leading, spacing: 20) {
                
                // Exit button
                HStack {
                    Button(action: {
                        // Exit button action here
                    }) {
                        Image(systemName: "x.circle.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .opacity(0.6)
                        
                    }
                    .opacity(isSecondTextVisible ? 1.0 : 0) // Fade in
                    .offset(y: secondTextOffset) // Slide in from 200 points below
                }
                
                // First text box: "How may Days serve you?"
                Text("How may Days serve you?")
                    .font(.title2)
                    .foregroundColor(.white)
                    .opacity(isSecondTextVisible ? 1 : 0) // Fade in
                    .offset(y: secondTextOffset) // Slide in from 200 points below
                
                // Second text box: "Select your goals to personalize your recommendations."
                Text("Select your goals to personalize your recommendations.")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .opacity(isSecondTextVisible ? 1 : 0) // Fade in
                    .offset(y: secondTextOffset) // Slide in from 200 points below
                    .padding(.top, -10)
                    .padding(.bottom, 15)
                
                // Buttons with frosted glass effect
                VStack(spacing: 18) {
                    selectYourGoal(action: {
                        print("Increasing self mastery tapped")
                    }, icon: "crown", text: "Increasing self mastery")
                    
                    selectYourGoal(action: {
                        print("Exploring self care options tapped")
                    }, icon: "heart", text: "Exploring self care options")
                    
                    selectYourGoal(action: {
                        print("Making decisions about healing tapped")
                    }, icon: "cross", text: "Making decisions about healing")
                    
                    selectYourGoal(action: {
                        print("Moving from words to actions tapped")
                    }, icon: "sun.max", text: "Moving from words to actions")
                    
                    selectYourGoal(action: {
                        print("Discovering new interests tapped")
                    }, icon: "cloud.rainbow.half", text: "Discovering new interests")
                    
                    selectYourGoal(action: {
                        print("Reducing depression tapped tapped")
                    }, icon: "face.smiling", text: "Reducing depression")
                    
                    selectYourGoal(action: {
                        print("Building resilience tapped")
                    }, icon: "dumbbell", text: "Building resilience")
                }
                        .opacity(isSecondTextVisible ? 1 : 0) // Fade in with text
                        .offset(y: secondTextOffset) // Slide in from 200 points below
                    
            }
            .padding([.top], 30)
            .padding([.leading], 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            
            VStack {
                Spacer() // This will push the button to the bottom
                Button(action: {
                    // Continue button action here
                }) {
                    Text("Continue")
                        .font(.headline)
                        .foregroundColor(.blue)
                        .padding()
                        .frame(width: 350, height: 45)
                        .background(Color.white)
                        .cornerRadius(50)
                }
                .padding(.bottom, 30)
                .opacity(isSecondTextVisible ? 1 : 0) // Fade in with text
                .offset(y: secondTextOffset) // Slide in from 200 points below
            }
        }
    }
}

#Preview {
        WelcomeView()
    }
