//
//  TestHome.swift
//  Days
//
//  Created by Manuel Bautista on 9/27/24.
//
import SwiftUI

struct TestHome: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(hex: "#7F9DC7"), Color(hex: "#102491")]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Featured Product")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    
                    // Add frosted glass button here
                    Button(action: {
                        // Button action
                    }) {
                        HStack {
                            // SF Symbol icon
                            Image(systemName: "crown")
                                .font(.system(size: 20)) // Set icon size
                                .foregroundColor(.white) // Icon color
                            
                            Text("Increasing self mastery")
                                .font(.headline)
                                .foregroundColor(.white)
                            
                        }
                            .padding(22)
                            .frame(width: 350, height: 45, alignment: .leading)
                            .background(
                                VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark) // Frosted glass effect
                                    .opacity(0.7) // Background opacity
                                    .brightness(-0.11) // Adjust brightness

                            )
                            .cornerRadius(50)
                            .opacity(1) // Overall opacity
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color(hex: "#A3A3A3"), lineWidth: 1)
                                )
                    }
                    // Add frosted glass button here
                    Button(action: {
                        // Button action
                    }) {
                            HStack {
                                // SF Symbol icon
                                Image(systemName: "heart")
                                    .font(.system(size: 20)) // Set icon size
                                    .foregroundColor(.white) // Icon color
                                
                                Text("Exploring self care options")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                
                            }
                            .padding(22)
                            .frame(width: 350, height: 45, alignment: .leading)
                            .background(
                                VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark) // Frosted glass effect
                                    .opacity(0.7) // Background opacity
                                    .brightness(-0.11) // Adjust brightness

                            )
                            .cornerRadius(50)
                            .opacity(1) // Overall opacity
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color(hex: "#A3A3A3"), lineWidth: 1)
                                )
                    }
                    // Add frosted glass button here
                    Button(action: {
                        // Button action
                    }) {
                        HStack {
                            // SF Symbol icon
                            Image(systemName: "cross")
                                .font(.system(size: 20)) // Set icon size
                                .foregroundColor(.white) // Icon color
                            
                            Text("Making decisions about healing")
                                .font(.headline)
                                .foregroundColor(.white)
                            
                        }
                            .padding(22)
                            .frame(width: 350, height: 45, alignment: .leading)
                            .background(
                                VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark) // Frosted glass effect
                                    .opacity(0.7) // Background opacity
                                    .brightness(-0.11) // Adjust brightness

                            )
                            .cornerRadius(50)
                            .opacity(1) // Overall opacity
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(Color(hex: "#A3A3A3"), lineWidth: 1)
                                )
                    }
                    
                    VStack (alignment: .leading, spacing: 0){
                        
                        ZStack {
                            // Background Grid with Dashed Lines
                            VStack {
                                Divider()
                                    .frame(height: 0.7) // Adjust for horizontal line thickness
                                    .background(Color.white.opacity(0.3)) // Set color and opacity
                                    .padding(.bottom, 22.0)
                                                                
                                Divider()
                                    .frame(height: 0.7) // Adjust for horizontal line thickness
                                    .background(Color.white.opacity(0.3)) // Set color and opacity
                            }
                            HStack {
                                ForEach(0..<3) { _ in
                                    Rectangle()
                                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [1, 1])) // Dash pattern
                                        .foregroundColor(.white.opacity(0.3))
                                        .frame(width: 1)
                                        .padding(.horizontal, 50)
                                }
                                .padding(.top, -14.0)
                            }
                            
                            // Sun (Center Circle)
                            Circle()
                                .fill(Color.white.opacity(1.0))
                                .frame(width: 20, height: 20)
                            
                            // Inner Circles around the Sun
                            Circle()
                                        .fill(
                                            RadialGradient(
                                                gradient: Gradient(colors: [Color.white.opacity(0.1), Color.white.opacity(0.0)]),
                                                center: .center,
                                                startRadius: 14,
                                                endRadius: 28 // Adjust this for size
                                            )
                                        )
                                        .frame(width: 75, height: 75)
                            
                         
                            
                        }
                              .frame(height: 75) // Adjust this to fit your design
                        
                        Divider()
                            .frame(height: 1.5) // Adjust for horizontal line thickness
                            .background(Color.white.opacity(1.0)) // Set color and opacity
                        
                        Text("Build a Plan")
                            .font(.headline)
                            .padding(.top)
                            .foregroundColor(.white)

                        Text("Customize a Care Plan, and turn it into a real daily practice of self-nurture, self-healing, self-love.")
                            .font(.subheadline)
                            .padding()
                            .foregroundColor(.white)

                        NavigationLink("Create a Weekly Schedule >", destination: ScheduleView())
                            .accentColor(Color(hex: "#54E3C7"))
                            .padding()
                        
                            .frame(maxWidth: .infinity, alignment: .top) // Ensure it aligns to the top and fills width
                               .padding(.top, 0)
                    }
                    .background(
                        VisualEffectBlur(blurStyle: .systemChromeMaterial)
                            .opacity(0.3)
                            .brightness(-0.6)
                        )
                    .cornerRadius(12)
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(hex: "#54E3C7"), lineWidth: 1)
                    )
                   
                }
            }
            
            
            .navigationTitle("Home")  // Optional: set a navigation title
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button("Home") {
                        // action for Home
                    }
                    Spacer()
                    Button("Search") {
                        // action for Search
                    }
                    Spacer()
                    Button("Notifications") {
                        // action for Notifications
                    }
                    Spacer()
                    Button("Settings") {
                        // action for Settings
                    }
                }
            }
        }
    }
}

// Supporting struct for frosted glass effect
struct VisualEffectBlur: UIViewRepresentable {
    var blurStyle: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: blurStyle))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: blurStyle)
    }
}

struct TestHome_Previews: PreviewProvider {
    static var previews: some View {
        TestHome()
    }
}
