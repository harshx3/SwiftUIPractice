//
//  PopSheetEG.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/26/25.
//

import SwiftUI

struct PopSheetEG: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        /*
         As till now we have learned about sheets, animation, and transitions so using all of this we going to present a second  screen using all these three methods and will get to know how can get same result using multiple methods
         */
        
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //Method 1 - Sheet method
            //            .sheet(isPresented: $showNewScreen, content: {
            //                NewScreen()
            //            })
            
            //Method 2 - Transition method
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .transition(.move(edge: .bottom))
//                        .animation(.bouncy)
//                }
//            }
//            .zIndex(2.0)
            //put it in a ZStack to add closing animation
            
            //Method 3 - Animation Offset
            NewScreen(showNewScreen: $showNewScreen)
                
                .offset(y: showNewScreen ? 300 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.edgesIgnoringSafeArea(.bottom)
            
            Button(action: {
                //For method 1 - sheet
//                presentationMode.wrappedValue.dismiss()
            
                showNewScreen = false;
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
        
    }
}

#Preview {
    PopSheetEG()
//    NewScreen()
}
