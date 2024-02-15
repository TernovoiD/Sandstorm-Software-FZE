//
//  SanstormSoftwareFZEApp.swift
//  SanstormSoftwareFZE
//
//  Created by Danylo Ternovoi on 15.02.2024.
//

import SwiftUI

@main
struct SanstormSoftwareFZEApp: App {
    
    @StateObject var viewModel = AppViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(viewModel)
        }
    }
}
