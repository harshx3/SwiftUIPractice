//
//  PickerUI.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/28/25.
//

import SwiftUI

struct PickerUI: View {
    @State var userState: String = ""
    var usStates: [String] = [
        "Alabama", "Alaska", "Arizona", "Arkansas", "California",
        "Colorado", "Connecticut", "Delaware", "Florida", "Georgia",
        "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa",
        "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland",
        "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri",
        "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey",
        "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio",
        "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina",
        "South Dakota", "Tennessee", "Texas", "Utah", "Vermont",
        "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"
    ]
    
    @State var backgroundColor: Color = .red
    @State var currentDate: Date = Date()
    
    //var for date in range
    @State var startDate: Date = Calendar.current.date(from: DateComponents(year: 2024)) ?? Date()
    @State var endDate: Date = Date()
    
    //format a date
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
    var body: some View {
        
        ZStack(alignment: .top) {
            
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                //color picker
                ColorPicker("Select Background",
                            selection: $backgroundColor, supportsOpacity: true)
                .padding()
                .background(Color.black)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .font(.headline)
                .padding(50)
                
                //date picker
                DatePicker("Select a Date", selection: $currentDate)
//                    .datePickerStyle(())
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                    .padding(30)
                   
                  //just date or time component
                DatePicker("Date",
                           selection: $currentDate, displayedComponents: [.date])
                .padding()
                .background(.blue)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .padding(30)
                
                //date in rage
                DatePicker("Date in range",
                           selection: $currentDate,
                           in: startDate...endDate,
                           displayedComponents: [.date])
                .padding()
                .background(.blue)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .padding(30)
               
                
            }
                
            VStack {
                
                HStack {
                    Text("Select your state: ")
                    Text(userState)
                    Text("Selected Date : ")
                    Text(dateFormatter.string(from: currentDate))
                        .font(.headline)
                        .foregroundStyle(.white)
                }
                
                Spacer()
                Picker(
                    selection: $userState,
                    label: Text("States"),
                    content: {
                        ForEach(usStates, id: \.self) {state in
                            Text(state).tag(state)
                                .foregroundStyle(.black)
                            
                        }
                    })
                .pickerStyle(InlinePickerStyle())
                .background(Color.gray.opacity(0.5))
            }
        }
    }
}

#Preview {
    PickerUI()
}
