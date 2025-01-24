//
//  InitAndEnums.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/24/25.
//

import SwiftUI

struct InitAndEnums: View {
    //init helps us to define initial value of variable
    //just like we do in class and struct
    let backgroundColor: Color
    let count: Int
    let name: String
    
//    init(count:Int, name:String) {
//        self.count = count
//        self.name = name
//        
//        if name == "Apple" {
//            self.backgroundColor = .red
//        }
//        else {
//            self.backgroundColor = .orange
//        }
//    }
    
    init(count: Int, fruit: Fruits) {
        self.count = count
        
        if(fruit == .apple) {
            self.name = "Apples"
            self.backgroundColor = .red
        }
        else {
            self.name = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    // to gave more optimize code we can further use enum to get names
    
    enum Fruits {
        case apple
        case orange
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .underline()
                .font(.largeTitle)
            Text(name)
                .font(.title)
            /*so insted of giving this hard coded value we can give to init do define bg color name and all*/
        }
        .foregroundStyle(Color.white)
        .frame(width:150, height: 150)      .background(backgroundColor)
        .cornerRadius(20)
       
        
    }
}

#Preview {
    HStack {
        InitAndEnums(count: 100, fruit: .apple)
        InitAndEnums(count: 100, fruit: .orange)
    }
    
}
