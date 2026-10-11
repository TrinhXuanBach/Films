//
//  PrimaryButton.swift
//  Films
//
//  Created by Admin on 10/10/26.
//

import SwiftUI

struct PrimaryButton<Content: View>: View {
    private let content: () -> Content
    private let action: () -> Void
    
    init(action: @escaping @MainActor () -> Void, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            content()
        }
        .frame(height: 56)
        .frame(maxWidth: .infinity)
        .background(Color.palleteAccent)
        .clipShape(RoundedRectangle(cornerSize: .init(width: 16, height: 16)))
    }
}
