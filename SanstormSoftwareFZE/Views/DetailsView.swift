//
//  DetailsView.swift
//  SanstormSoftwareFZE
//
//  Created by Danylo Ternovoi on 15.02.2024.
//

import SwiftUI

struct DetailsView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        ZStack {
            Image("panda")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .containerRelativeFrame(.vertical)
                .containerRelativeFrame(.horizontal, alignment: .leading)
            HStack {
                Spacer()
                VStack {
                    closeButton
                    Spacer()
                }
            }
            .padding(20)
        }
    }
    
    private var closeButton: some View {
        Button(action: { toggleDetailsView() }, label: {
            Circle()
                .foregroundStyle(Color.gray)
                .frame(width: 32)
                .overlay {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color.white)
                }
        })
    }
    
    private func toggleDetailsView() {
        withAnimation(.easeInOut) {
            viewModel.showDetailsView()
        }
    }
}

#Preview {
    DetailsView()
        .environmentObject(AppViewModel())
}
