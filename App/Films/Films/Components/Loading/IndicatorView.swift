//
//  IndicatorView.swift
//  Films
//
//  Created by Admin on 4/10/26.
//

import SwiftUI
import Combine

struct IndicatorView: View {
    @State var animatable: [AnimatableModel] = [
        AnimatableModel(isAnimating: false, delay: .zero),
        AnimatableModel(isAnimating: false, delay: .zero),
        AnimatableModel(isAnimating: false, delay: .zero)
    ]
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<animatable.count, id: \.self) { index in
                makeCircleAnimated(isAnimating: animatable[index].isAnimating,
                                   delay: animatable[index].delay)
            }
        }
        .onAppear {
            animatable = [
                AnimatableModel(isAnimating: true, delay: .zero),
                AnimatableModel(isAnimating: true, delay: 0.75),
                AnimatableModel(isAnimating: true, delay: 1.5)
            ]
        }
    }
    
    func makeCircleAnimated(isAnimating: Bool, delay: TimeInterval) -> some View {
        Circle()
            .fill(Color.palleteAccent)
            .frame(width: 8, height: 8)
            .offset(.init(width: .zero, height: isAnimating ? -5 : .zero))
            .animation(animation(delay: delay), value: isAnimating)
    }
    
    private func animation(delay: TimeInterval) -> Animation {
        .bouncy(duration: 0.75)
        .repeatForever(autoreverses: true)
        .delay(delay)
    }
}

#Preview {
    IndicatorView()
}
