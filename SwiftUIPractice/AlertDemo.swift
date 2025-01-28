//
//  AlertDemo.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/28/25.
//

import SwiftUI

struct AlertDemo: View {
    @State var showAlert: Bool = false
    @State var Clicked: Bool = false
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    //using enum
    @State var selectAlert: alertType?  = nil
    @State var success: Bool = false
    
    enum alertType {
        case success
        case error
        
    }
    
    var body: some View {
       
        VStack {
//            Button(Clicked ? "Clicked" : "Click" ){
//                showAlert.toggle()
            
            Button("Photos") {
//                alertTitle = "Photo upload Success"
//                alertMessage = "Your photo has been uploaded successfully"
//                success = true
                selectAlert = .success
                showAlert.toggle()
            }
                
                Button("Videos") {
//                    alertTitle = "Video upload Error"
//                    alertMessage = "Video upload feature is not available"
//                    success = false
                    selectAlert = .error
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content: {
                //basic alert
                //            Alert(title: Text("There was an error"))
                //second way
                //            getAlert()
                
                //dynamic way
                getAlert()
                
            })
        }
    
    //second way
//    func getAlert() -> Alert {
//        Alert(title: Text("Title Error"),
//              message: Text("There was an error fetching your data"),
//              primaryButton: .destructive(Text("DELETE"), action: {
//            Clicked = true
//        }),
//              secondaryButton: .cancel(Text("RETRY"), action: {
//            Clicked = false
//        }))
//    }
    
    //dynamic way
    func getAlert() -> Alert {
//        return Alert(title: Text(alertTitle),
//              message: Text(alertMessage),
//              dismissButton: success ? .default(Text("Success")) :
//                .destructive(Text("ERROR")))
        switch selectAlert {
        case .error:
            return Alert(title: Text("Video Error"),
                         message: Text("Video upload feature is not available"),
                         dismissButton: .destructive(Text("ABORT")))
        case .success:
            return Alert(title: Text("Photo Uploaded"),
                         message: Text("Photo has been uploaded successfully"),
                         dismissButton: .default(Text("OK")))
        default:
            return Alert(title: Text(""))
        }
    }
}

#Preview {
    AlertDemo()
}


