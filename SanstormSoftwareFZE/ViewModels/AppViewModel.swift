//
//  AppViewModel.swift
//  SanstormSoftwareFZE
//
//  Created by Danylo Ternovoi on 15.02.2024.
//

import Foundation

class AppViewModel: ObservableObject {
    
    @Published var isDetailsOpen: Bool
    @Published var isButtonActive: Bool
    
    init() {
        self.isDetailsOpen = false
        self.isButtonActive = true
    }
    
    func toggleButtonLock() {
        isButtonActive.toggle()
    }
    
    func showDetailsView() {
        isDetailsOpen.toggle()
    }
    
}
