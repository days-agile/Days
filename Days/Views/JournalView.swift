//
//  DRP1.swift
//  Days
//
//  Created by Manuel Bautista on 10/7/24.
//
import SwiftUI

struct JournalView: View {
    @State private var selectedRating: Int?
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
                                .trim(from: 0, to: 0.25) // Adjust 'to' value based on page completion
                                .stroke(Color(hex: "#54E3C7"), lineWidth: 8)
                                .rotationEffect(.degrees(-90))
                                .animation(.easeInOut(duration: 0.5), value: completionProgress) // Animate the changes
                        }
                        .frame(width: 30, height: 30)
                        .padding(.trailing, 10)
                        .padding(.top, 10)
                    }
                    
                    Spacer()
                    
                    Text("On a scale of 1-10, how do you rate your day today?")
                        .font(.title2)
                        .foregroundColor(.white)
                        .fontWeight(.light)
                        .padding() // Title text
                        Spacer()
                    
                    HStack(spacing: 16) {
                        ForEach(5...9, id: \.self) { number in
                            Button(action: {
                                selectedRating = number
                            }) {
                                Text("\(number)")
                                    .font(.title
                                    )
                                    .frame(width: 50, height: 50)
                                    .background(selectedRating == number ? Color.blue : Color.clear)
                                    .foregroundColor(.white)
                                    .clipShape(Circle())
                                    .fontWeight(.bold)
                            }
                        }
                    }
                    .padding() // Response buttons (HStack)
                    
                    Button(action: {
                        // Action to move to the next page
                    }) {
                        Text("Next")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(selectedRating != nil ? Color.blue : Color.white)
                            .foregroundColor(selectedRating != nil ? Color.white : Color.black)
                            .cornerRadius(50)
                    }
                    .disabled(selectedRating == nil)
                    .padding() // Next button
                    
                    Button(action: {
                        // Action to trigger print functionality
                    }) {
                        Image(systemName: "printer")
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

    struct JournalView_Previews: PreviewProvider {
        static var previews: some View {
            JournalView()
        }
    }
