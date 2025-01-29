//
//  ActionSheetDemo.swift
//  SwiftUIPractice
//
//  Created by Harsh Makwana on 1/28/25.
//

import SwiftUI

/*
 Alert and action sheet is  kind similar as alert pop up in the middle of screen where as Action sheet pop up from bottom of the screen and you can add multiple buttons in action sheet whereas you can have only two in alert
 
 */

struct ActionSheetDemo: View {
    @State var showActionSheet: Bool = false
    @State var selectedUser: userType = .other
    
    enum userType {
        case owner
        case other
    }
    var body: some View {
//        Button("popUp Bottom"){
//            showActionSheet.toggle()
//        }
//        .actionSheet(isPresented: $showActionSheet, content: {
////            ActionSheet(title: Text("This action sheet"),
////                        message: Text("Tried action sheet instead of alert to explore"))
//            getActionSheet()
//        })
        
        
        
        VStack {
            
            HStack{
                Button(action: {
                    selectedUser = .owner
                }, label: {
                    Text("Owner")
                })
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(.blue)
                .cornerRadius(10)
            
                Spacer()
                Button(action: {
                    selectedUser = .other
                }, label: {
                    Text("Other")
                })
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal, 20)
                .background(.blue)
                .cornerRadius(10)
            }
            .padding(.horizontal, 20)
           
           
                
            HStack {
                Circle()
                    .frame(width:30)
                Text("@username")
                Spacer()
                Button(action: {
                    showActionSheet.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                        .accentColor(.black)
                })
            }
            .padding(.horizontal, 20)
            
            Rectangle()
                .frame(height: 400)
        }
        .actionSheet(isPresented: $showActionSheet, content: {
            getActionSheet()
        })
    }
    func getActionSheet() -> ActionSheet {
//        return ActionSheet(title: Text("This Action Sheet Error"),
//                           message: Text("This is error from action sheet to explore about action sheet"),
//                           buttons: [.default(Text("OK")), .cancel(Text("Cancel")),
//                                     .destructive(Text("Abort"))])
        
        let ownerButtons: [ActionSheet.Button] = [
            .default(Text("Share to Facebook")),
            .default(Text("Archive")),
            .default(Text("Hide like count")),
            .default(Text("Hide share count")),
            .destructive(Text("Delete Post")),
            .cancel()
        ]
        
        let othersButtons: [ActionSheet.Button] = [
            .default(Text("Add to Favorite")),
            .destructive(Text("Unfollow")),
            .default(Text("About this account")),
            .default(Text("Hide")),
            .cancel()
        ]
        
        switch selectedUser {
        case .owner:
            return ActionSheet(title: Text("Post Options"),
                               message: nil,
                               buttons: ownerButtons)
        case .other:
            return ActionSheet(title: Text("Post Options"),
                               message: nil,
                               buttons: othersButtons)
        default:
            return ActionSheet(title: Text(""))
        }
        
    }
}

#Preview {
    ActionSheetDemo()
}
