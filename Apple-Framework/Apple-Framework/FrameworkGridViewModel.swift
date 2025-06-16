//
//  FrameworkGridViewModel.swift
//  Apple-Framework
//
//  Created by Harsh Makwana on 6/1/25.
//

import Foundation

final class FrameworkGridViewModel : ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
   @Published var isShowingDetailView = false
    

    
}
