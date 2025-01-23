//
//  TextView.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/23/25.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Hello, World!".capitalized)
        /*we can directly use .capitalized or any other property in text field it self
         */
        
//            .font(.largeTitle)
//            .bold()
//            .strikethrough(true, color: Color.red)
//            .italic()
//            .underline(true, color: Color.blue)
        //in this size is 25 so when user use large text or small text in iphone setting it will not resize in this but in above one it does
            .font(.system(size: 25, weight: Font.Weight.semibold,
                          design:.monospaced))
        Text("This is the first time I am trying SwiftUI and Xcode IDE and so far i am really impressed with the functionality and ease of use.")
//            .multilineTextAlignment(.trailing)
        //baseline to give space b/w the lines
        //negative number add space above the line
            .baselineOffset(10.0)
        //kerning is letter spacing
            .kerning(1.5)
        //font color
            .foregroundColor(.blue)
        //to give specific width or height to set text take only that space
            .frame(width:200, height:100, alignment:.leading)
        //scaleFactor used to set text size increase  to fit in box size
            .minimumScaleFactor(0.5)
    }
   
}

#Preview {
    TextView()
}
