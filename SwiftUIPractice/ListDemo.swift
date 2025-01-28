//
//  ListDemo.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/27/25.
//

import SwiftUI

struct ListDemo: View {
    
    @State var listItem: [String] = [
        "Airplane Mode",
        "Wi-Fi",
        "Bluetooth",
        "Cellular",
        "Personal Hotspot",
        "Battery",
    ]
    
    @State var appList: [String] = [
        "App Store",
        "Facebook",
        "Instagram",
        "Whatsapp",
        "LinkedIn",
        "Safari"
    ]
    
    var body: some View {
        NavigationView {
            List {
                //section gives heading to list
                Section(header: Text("Connectivity")) {
                    ForEach(listItem, id: \.self) {item in
                        Text(item)
                            .font(.caption)
                            .foregroundStyle(.black)
                            .fontWeight(.semibold)
                            .padding(.vertical)
                        //still this frame and bg will not cover all the list width and height to edit whole bg we can use listRowBackground()
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(.pink)
                            
                    }
                    //add swipe to delete
                    //                .onDelete {indexSet in
                    //                    listItem.remove(atOffsets: indexSet)
                    //                }
                    
                    //now using func
                    .onDelete(perform: deleteItems)
                    //move up down
//                    .onMove(perform: { indices, newOffset in
//                        //this might not work in preview as expected but working fine in simulator
////                        listItem.move(fromOffsets: indices, toOffset: newOffset)
//                    })
                    .onMove(perform: moveItems)
                    .listRowBackground(Color.blue.opacity(0.3))
                }
                
                //another section
                Section(header: Text("Apps")
                    .foregroundStyle(.red)
                    .fontWeight(.semibold)){
                    ForEach(appList, id: \.self) {app in
                            Text(app)
                    }
                }
            
                
            }
            
//            .listStyle(GroupedListStyle())
//            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Setting")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addItemButton
            )
         
        }
     
        
    }
    
    var addItemButton: some View {
        Button("Add Mode", action: {
            addItem()
        })
    }
    
    func deleteItems(at offsets: IndexSet) {
         listItem.remove(atOffsets: offsets)
     }
    
    func moveItems(indices: IndexSet, newOffset: Int) {
        listItem.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addItem() {
        listItem.append("New Mode")
    }
}

#Preview {
    ListDemo()
}
