//
//  TextFieldEG.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/28/25.
//

import SwiftUI

struct TextFieldEG: View {
    @State var userInput: String = ""
    @State var editorText: String = "Enter your bio here..."
    @State var InputArray: [String] = []
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                TextField("Enter your text", text: $userInput)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundStyle(.blue)
                    .font(.headline)
                    .fontDesign(.serif)
                
                //TextEditor
                TextEditor(text: $editorText)
                //bg color will not work in TextEditor so we need to use colorMultiple()
                    .colorMultiply(Color.gray.opacity(0.4))
                    .frame(height: 300)
                    .cornerRadius(10)
                    
                Button(action: {
                    saveText()
                }, label: {
                    Text("save".uppercased())
                })
                .padding()
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
                
                
                
                
                ForEach(InputArray, id:\.self) { input in
                 Text(input)
                        .font(.title)
                }
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("Textfield Demo")
        }
    
        
    }
    
    func saveText() {
        InputArray.append(userInput)
        userInput = ""
    }
}

#Preview {
    TextFieldEG()
}
