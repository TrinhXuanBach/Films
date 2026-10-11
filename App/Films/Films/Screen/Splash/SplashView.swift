//
//  SplashView.swift
//  Films
//
//  Created by Admin on 10/10/26.
//

import SwiftUI

struct SplashView: View {
    struct Constants {
        static let statusLineContents: [LocalizedStringResource] = [
            .splashStatusLineOne,
            .splashStatusLineTwo,
            .splashStatusLineThree
        ]
        
        static let tipContents: [LocalizedStringResource] = [
            .splashTipTextOne,
            .splashTipTextTwo,
            .splashTipTextThree
        ]
    }
    
    @State private var appLogoScale: CGSize = .init(width: 1.0, height: 1.0)
    @State private var statusLineContent: LocalizedStringResource = .splashStatusLineOne
    @State private var tipContent: LocalizedStringResource = .splashTipTextOne
    
    var body: some View {
        VStack(spacing: .zero) {
            Spacer()
            
            Text(.splashDidYouKnow)
                .foregroundStyle(.inkFaint)
                .font(.init(.overline, .bold))
            
            Spacer().frame(height: 5)
            
            Text(tipContent)
                .foregroundStyle(.inkMuted)
                .font(.init(.label, .regular))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 32)
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 32)
        .background(Color.paletteBg)
        .overlay(content: {
            VStack(spacing: .zero) {
                Image(uiImage: .icAppLogo)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 96)
                    .scaleEffect(appLogoScale)
                    .animation(.spring(duration: 0.75).repeatForever(autoreverses: true), value: appLogoScale)
                
                Spacer().frame(height: 22)
                
                Text(.clipr)
                    .foregroundStyle(.ink)
                    .font(.init(.titleM, .heavy))
                
                Spacer().frame(height: 26)
                
                IndicatorView()
                
                Spacer().frame(height: 16)
                
                Text(statusLineContent)
                    .foregroundStyle(.inkMuted)
                    .font(.init(.label, .regular))
                    .multilineTextAlignment(.center)
            }
        })
        .onAppear {
            appLogoScale = .init(width: 0.9, height: 0.9)
        }
        .task {
            await animationContent()
        }
    }
    
    private func animationContent() async {
        let statusContents = Constants.statusLineContents
        let tipContents = Constants.tipContents
        
        var indexStatusContent = Int.zero
        
        while true {
            indexStatusContent = (indexStatusContent + 1) % statusContents.count
            try? await Task.sleep(nanoseconds: 750_000_000)
            
            statusLineContent = statusContents[indexStatusContent]
            tipContent = tipContents[indexStatusContent]
        }
    }
}

#Preview {
    SplashView()
}
