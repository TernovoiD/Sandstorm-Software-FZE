//
//  MainView.swift
//  SanstormSoftwareFZE
//
//  Created by Danylo Ternovoi on 15.02.2024.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack() {
                Image("panda")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .containerRelativeFrame(.vertical, { size, axis in
                        size * 0.3
                    })
                    .frame(width: 150, alignment: .leading)
                    .clipped()
                HStack(spacing: 20) {
                    lockButton
                    openFromTopButton
                }
                Spacer()
                Text("Open full")
                    .coloredBorder()
            }
            .padding(20)
            .overlay {
                DetailsView()
                    .offset(y: viewModel.isDetailsOpen ? 0 : -1000)
            }
        }
    }
    
    private var lockButton: some View {
        Button {
            toggleButtonLock()
        } label: {
            Text(viewModel.isButtonActive ? "Lock" : "Unlock")
                .coloredBorder()
        }
    }
    
    private var openFromTopButton: some View {
        Button {
            toggleDetailsView()
        } label: {
            Text("Open from top")
                .coloredBorder()
        }
        .disabled(!viewModel.isButtonActive)
        .opacity(viewModel.isButtonActive ? 1 : 0.55)
    }
    
    private func toggleButtonLock() {
        withAnimation {
            viewModel.toggleButtonLock()
        }
    }
    
    private func toggleDetailsView() {
        withAnimation(.easeInOut) {
            viewModel.showDetailsView()
        }
    }
}

#Preview {
    MainView()
        .environmentObject(AppViewModel())
}
