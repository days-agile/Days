//
//  CustomBirthdayPicker.swift
//  Days
//
//  Created by Manuel Bautista on 11/4/24.
//

import SwiftUI

struct RegisterView3: View {
    @State private var birthdate: Date? = nil // Stores the selected date
    @State private var isDatePickerVisible: Bool = false // Toggle visibility of DatePicker

    var body: some View {
        GeometryReader { geometry in
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(hex: "#7F9DC7"), Color(hex: "#102491")]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                    
                    VisualEffectBlur(blurStyle: .systemMaterialDark)
                        .opacity(0.9) // Set opacity for low transparency
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
                                .opacity(0.6) // Set opacity for low transparency

                        }
                    }
                    
                    Text("What day were you born?")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 20.0)

                                        
                    Text("Birthday is used in the calculation of your age in days. Only you will see this. Learn more. \n\nYou can change your ‘birthday’ in your account settings. ")
                        .font(.system(size: 15))
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    Button(action: {
                        // Action to move to the next page
                    }) {
                        Text("Next")
                            .bold()
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(50)
                    }
                    .padding(.top, 30) // Next button
                    
                    Spacer()
                    
                    
                        Text("© Days Ltd Co")
                        .foregroundColor(.white)
                            .font(.system(size: 12))
                            .padding(.horizontal, 50)
                            .opacity(0.3)
                }
                .padding([.top], 30)
                .padding(.horizontal, 20)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)                .padding(.bottom, 100.0)
                
                
                
                VStack(alignment: .leading, spacing: 10) {
                    // Container for the label and date text
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Birthday (\(formattedDaysOldText()) days old)")
                            .font(.caption2)
                            .foregroundColor(.white.opacity(0.6))
                        
                        Text(birthdate == nil ? todayAsString() : formattedDate(birthdate!))
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(10)
                    .background(
                        VisualEffectBlur(blurStyle: .systemUltraThinMaterialDark)
                            .opacity(0.7)
                            .brightness(-0.11)
                            .cornerRadius(5)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(isDatePickerVisible ? Color.white : Color.gray, lineWidth: 1) // Changes color when DatePicker is visible
                    )
                    .onTapGesture {
                        // Show DatePicker when tapped
                        withAnimation {
                            isDatePickerVisible.toggle()
                        }
                    }
                }
                .padding(.horizontal, 20)
                
                // DatePicker displayed at the bottom of the screen
                if isDatePickerVisible {
                    DatePicker("Select your birthday", selection: Binding($birthdate, default: Date()), in: ...Date(), displayedComponents: .date)
                        .datePickerStyle(.wheel)
                        .labelsHidden()
                        .frame(width: geometry.size.width, height: 300) // Fixed height for DatePicker
                        .background(Color.white) // Optional background color for DatePicker
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .position(x: geometry.size.width / 2, y: geometry.size.height - 100) // Positioned at the bottom
                        .onDisappear {
                            // Hide DatePicker after user interaction
                            isDatePickerVisible = false
                        }
                        .transition(.move(edge: .bottom))
                    
                }
            }
        }
    }

    // Helper function to get today's date as a string
    private func todayAsString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter.string(from: Date())
    }

    // Helper function to format the selected date
    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter.string(from: date)
    }

    // Function to calculate age in days with comma formatting
    private func formattedDaysOldText() -> String {
        guard let birthdate = birthdate else { return "0" }
        let daysOld = Calendar.current.dateComponents([.day], from: birthdate, to: Date()).day ?? 0
        
        // Format number with commas
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(value: daysOld)) ?? "\(daysOld)"
    }
}

struct RegisterView3_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView3()
    }
}
