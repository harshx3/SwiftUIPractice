//
//  PopUpSheets.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/25/25.
//

import SwiftUI

struct PopUpSheets: View {
    @State var isPopUp: Bool = false
    var body: some View {
        ZStack{
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                isPopUp.toggle()
            }, label: {
                 Text("Button")
                
                .foregroundStyle(.green)
                .font(.headline)
                .padding(20)
                .background(Color.white.cornerRadius(10))
            })
            //sheet modifier is only once use in view hicherachy
            // don't add if else to add multiple sheet you can run into error
            .sheet(isPresented: $isPopUp, content: {
                PopUpScreen()
            })
        }
    }
}

struct PopUpScreen: View {
    //var for remove sheet from screen
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        ZStack(alignment: .topLeading){
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            },
                   label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
            )
            
//           Text("This is a pop up screen which is good feature of swiftui")
//                .multilineTextAlignment(.leading)
//                .font(.largeTitle)
//                .foregroundStyle(.white)
            //remove sheet we can obviously drag it down but using button we can it as well
        }
        
    }
}

#Preview {
    PopUpSheets()
}
