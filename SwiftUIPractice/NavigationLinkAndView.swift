//
//  NavigationLinkAndView.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/26/25.
//

import SwiftUI

struct NavigationLinkAndView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(0..<10) {index in
                        VStack{
                           
                            NavigationLink(destination: ClickedBox()) {
                     CreateBox()
                            }
                            
                        }
                    }
                }
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Primary")
            //inlime to show only on top but default is title to default scroll to make inline
//            .navigationBarTitleDisplayMode(.inline)
            //to hide navigation bar
//            .navigationBarHidden(true)
            
            // we can add navigation item to show buttons on top
            .toolbar{
                ToolbarItemGroup(placement: .navigationBarLeading){
                    Image(systemName: "person.fill")
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                    // we can make navigation link here as well
                    
                }
            }
            
        }
    }
}

struct CreateBox: View {

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width:300,height: 100)
            Text("Click")
                .foregroundStyle(.white)
            //we can have second screen title as well
            
        }

    }
}

struct ClickedBox: View {
    //add environment to do custom back
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Text("Clicked on box")
//                .navigationTitle("Mail Id")
            //to hide navigationbar and show custom back button
                .navigationBarBackButtonHidden(true)
            
            VStack(alignment: .leading) {
                Button("Back", action: {
                    presentationMode.wrappedValue.dismiss()
                })
             Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    NavigationLinkAndView()
}
