//
//  WeeklyScheduleView.swift
//  Days
//
//  Created by Manuel Bautista on 9/25/24.
//
import SwiftUI

    struct ScheduleView: View {
        @State private var birthdate: Date? = nil // Optional to check if selected
        @State private var isDatePickerVisible: Bool = false // Toggle visibility of DatePicker
        
    var body: some View {
        Text("This is the Weekly Schedule View")
        // Add more UI elements here as needed
        
        VStack(alignment: .leading, spacing: 5) {
                    // TextField-like View with Two Lines
                    ZStack(alignment: .leading) {
                        if birthdate == nil {
                            VStack(alignment: .leading, spacing: 2) {
                                Text("Birthday") // Static "Birthday" label
                                    .font(.caption2)
                                    .foregroundColor(.white.opacity(0.6)) // Placeholder style

                                Text(todayAsString()) // Display today's date or placeholder
                                    .font(.subheadline)
                                    .foregroundColor(.white.opacity(0.6)) // Lighter placeholder style
                            }
                            .padding(.horizontal, 10)
                        } else {
                            VStack(alignment: .leading, spacing: 2) {
                                Text("Birthday") // Static "Birthday" label
                                    .font(.caption2)
                                    .foregroundColor(.white)

                                Text(formattedDate(birthdate!)) // Display selected date
                                    .font(.subheadline)
                                    .foregroundColor(.white)
                            }
                            .padding(.horizontal, 10)
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(10)
                    .background(
                        VisualEffectBlur(blurStyle: .systemUltraThinMaterial)
                    )
                    .cornerRadius(5)
                    .onTapGesture {
                        // Show DatePicker when tapped
                        withAnimation {
                            isDatePickerVisible.toggle()
                        }
                    }
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.gray, lineWidth: 1)
                            .padding(.horizontal, 20)
                    )
                    
                    // DatePicker displayed when user interacts
                    if isDatePickerVisible {
                        DatePicker("", selection: Binding($birthdate, default: Date()), displayedComponents: .date)
                            .datePickerStyle(.wheel) // Adjust the style to fit your needs
                            .labelsHidden()
                           
                    }
                }
                .padding(.horizontal, 20)
            }

            // Helper to format the selected birthdate
            private func formattedDate(_ date: Date) -> String {
                let formatter = DateFormatter()
                formatter.dateStyle = .long
                return formatter.string(from: date)
            }

            // Helper to get today's date as a string
            private func todayAsString() -> String {
                let formatter = DateFormatter()
                formatter.dateStyle = .long
                return formatter.string(from: Date())
            }
        
    }

// Binding extension for default values
extension Binding where Value: Equatable {
    init(_ source: Binding<Value?>, default defaultValue: Value) {
        self.init(
            get: { source.wrappedValue ?? defaultValue },
            set: { newValue in source.wrappedValue = newValue }
        )
    }
}
   
struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView()
    }
}
       
