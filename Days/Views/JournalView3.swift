//
//  DRP3.swift
//  Days
//
//  Created by Manuel Bautista on 10/7/24.
//

import SwiftUI

struct JournalView3: View {
    @State private var userAnswer: String = ""
    @State private var completionProgress: CGFloat = 0.25 // Example starting progress
    
    var body: some View {
                    
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(hex: "#7F9DC7"), Color(hex: "#102491")]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Button(action: {
                            // Action to exit the daily review
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        .padding(.leading, 10)
                        .padding(.top, 10)
                        
                        Spacer() // This will push the completion circle to the right
                        
                        ZStack {
                            Circle()
                                .stroke(Color.gray, lineWidth: 8)
                            Circle()
                                .trim(from: 0, to: 0.75) // Adjust 'to' value based on page completion
                                .stroke(Color(hex: "#54E3C7"), lineWidth: 8)
                                .rotationEffect(.degrees(-90))
                                .animation(.easeInOut(duration: 0.5), value: completionProgress) // Animate the changes
                        }
                        .frame(width: 30, height: 30)
                        .padding(.trailing, 10)
                        .padding(.top, 10)
                    }
                    
                    Spacer()
                    
                    Text("What was my daily goal for today?")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title2)
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .padding() // Title text
                        Spacer()
                    
                    Text("Did you accomplish your daily goal today?")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title2)
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .padding() // Title text
                        Spacer()
                    Button(action: {
                        // Action to move to the next page
                    }) {
                        Text("Next")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(userAnswer.isEmpty ? Color.blue : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(50)
                    }
                    .disabled(userAnswer.isEmpty)
                    .padding() // Next button
                    
                    Button(action: {
                        // Action to trigger print functionality
                    }) {
                        Image(systemName: "printer.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    Spacer()// Print button (optional, can be placed elsewhere)
                }
                
                VStack {
                               Text("Days")
                                   .font(.title)
                                   .fontWeight(.semibold)
                                   .foregroundColor(.white)
                                   .padding(.top, 10)
                               Spacer()
            }
            
        }
        
    }
    

}

    struct JournalView3_Previews: PreviewProvider {
        static var previews: some View {
            JournalView3()
        }
    }
