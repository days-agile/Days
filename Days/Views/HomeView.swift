//
//  GuestHome.swift
//  Days
//
//  Created by Manuel Bautista on 9/25/24.
//
import SwiftUI



struct HomeView: View {
    @State private var birthdate: Date? = nil // Optional Date to check if a date is selected
    @State private var showSplash = true
    
    var body: some View {
        
        
        NavigationView {
            
            ZStack {
                
                if showSplash {
                    Splashview()
                        .transition(.opacity)
                        .animation(
                            .easeOut(duration:
                                        1.5))
                } else {
                    
                    LinearGradient(gradient: Gradient(colors: [Color(hex: "#7F9DC7"), Color(hex: "#102491")]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                        .statusBar(hidden: true)
                    
                    
                    ScrollView {  // Allows content to be scrollable if it extends beyond the screen
                        VStack(spacing: 25) {  // Adjust the 'spacing' to control the distance between the two VStacks
                            HStack {
                                Image("Battle-Royale")
                                    .resizable()
                                    .scaledToFit() // or .aspectRatio(contentMode: .fit)
                                    .padding(.horizontal, 120) // Adds space on the left and right
                                    .frame(maxWidth: .infinity, alignment: .center)
                                    .offset(y: -12)
                            }
                            
                            ZStack {
                                // Two circles in the background
                                Circle()
                                    .stroke(Color(hex: "#3EB49D"), lineWidth: 25)
                                    .frame(width: 125, height: 125)
                                    .offset(x: 0, y: 0) // Adjust position if needed
                                    .opacity(0.1)
                                    .padding(.top, -50.0)
                                
                                Circle()
                                    .stroke(Color(hex: "#54E3C7"), lineWidth: 25)
                                    .frame(width: 175, height: 175)
                                    .offset(x: 0, y: 0) // Adjust position if needed
                                    .opacity(0.1)
                                    .padding(.top, -50.0)
                                
                                VStack {
                                    Text("Calculate your age in days!")
                                        .font(.headline)
                                        .padding(.vertical, 20)
                                        .foregroundColor(.white)
                                    
                                    ZStack(alignment: .leading) {
                                        
                                        // DatePicker for selecting birthdate
                                        DatePicker("", selection: Binding($birthdate, default: Date()), displayedComponents: .date)
                                            .datePickerStyle(.compact) // Style as needed
                                            .foregroundColor(.white) // Text color for selected date
                                            .padding(1)
                                            .background(
                                                VisualEffectBlur(blurStyle: .systemUltraThinMaterial)
                                            )
                                            .cornerRadius(5)
                                            .padding(.horizontal, 20)
                                            .overlay(
                                                RoundedRectangle(cornerRadius: 5)
                                                    .stroke(Color.gray, lineWidth: 1)
                                                    .padding(.horizontal, 20)
                                            )
                                    }
                                    
                                    Text("Birthday is only used in the calculation of your age in days. Only you will see this.")
                                        .font(.caption2)
                                        .foregroundColor(.white)
                                        .padding(.horizontal, 50.0)
                                        .padding(.top, 10.0)
                                    
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    Spacer()
                                    
                                    Text("Enter birthdate to:")
                                        .font(.headline)
                                        .padding(.bottom, 1)
                                        .foregroundColor(.white)
                                    
                                        .padding()
                                    
                                    Button("COMPLETE DAILY REVIEW") {
                                        // action to complete the daily review
                                    }
                                    .frame(maxWidth: .infinity)
                                    .font(.headline)
                                    .padding()
                                    .background(Color.white)
                                    .foregroundColor(.gray)
                                    .clipShape(RoundedCorners(tl: 0, tr: 0, bl: 10, br: 10))
                                    .overlay(
                                        Rectangle()
                                            .frame(height: 2) // Outline height
                                            .foregroundColor(.gray) // Outline color
                                            .padding(.top, -1), // Aligns the outline with the top edge
                                        alignment: .top
                                    )
                                    
                                }
                                .background(
                                    VisualEffectBlur(blurStyle: .systemChromeMaterial)
                                        .opacity(0.3)
                                        .brightness(-0.6)
                                )
                                .cornerRadius(10)
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
                                
                                Text("Custom Plans")
                                    .font(.headline)
                                    .padding(.top, 25)
                                    .padding([.leading])
                                    .foregroundColor(.white)
                                
                                Text("Customize a Care Plan, and turn it into a real daily practice of self-nurture, self-healing, self-love.")
                                    .font(.subheadline)
                                    .padding()
                                    .padding(.top, -5)
                                    .padding(.trailing, 45)
                                    .foregroundColor(.white)
                                
                                NavigationLink("Create a Care Plan >", destination: ScheduleView())
                                    .accentColor(Color(hex: "#54E3C7"))
                                    .padding(.top, -20)
                                    .padding()
                                
                                    .frame(maxWidth: .infinity, alignment: .leading) // Ensure it aligns to the top and fills width
                                    .padding(.top, 0)
                                
                            }
                            .padding(.horizontal, 2.0)
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
                            
                            VStack {
                                ZStack(alignment: .bottomLeading) { // Align text to the bottom left of the image
                                    Image("BAS-B") // Replace with your image name
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(height: 250) // Set the desired height
                                        .cornerRadius(10)
                                        .clipped()
                                    
                                    Text("The Lions's Breath")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(.white)
                                        .padding(.leading, 15) // Padding from the left edge
                                        .padding(.bottom, 10) // Padding from the bottom edge
                                }
                                
                                // Further elements like subviews for additional meditations can be added here
                            }
                            
                            
                        }
                        .padding(.top, -30)  // Adds padding on top to give some space below the navigation bar
                    }
                    .padding(.horizontal, 33)  // Add more padding to the sides of the entire ScrollView's content
                }
                
            }
            .onAppear {
                DispatchQueue.main
                    .asyncAfter(deadline: .now() + 3)
                {
                    withAnimation {
                        self.showSplash = false
                    }
                }
            }
        }
        
    }
}

#Preview {
    HomeView()
}
