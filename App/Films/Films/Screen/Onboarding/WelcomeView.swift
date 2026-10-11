//
//  WelcomeScreen.swift
//  Films
//
//  Created by Admin on 10/10/26.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack(spacing: 10) {
                    Image.init(.icAppLogo)
                        .resizable()
                        .frame(width: 32, height: 32)
                    Text(.clipr)
                        .font(.init(.section, .heavy))
                        .foregroundStyle(.ink)
                    Spacer()
                }
                
                Image(.icOnboardingBg)
                    .resizable()
                    .aspectRatio(1.0, contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Text(.welcomeHeaderLine)
                    .font(.init(.displayHero, .heavy))
                    .foregroundStyle(.ink)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                
                Spacer().frame(height: 14)
                
                Text(.welcomeBody)
                    .font(.init(.label, .regular))
                    .foregroundStyle(.inkMuted)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                PrimaryButton {
                    
                } content: {
                    Text(.welcomeGetStarted)
                        .font(.init(.cardTitle, .bold))
                        .foregroundStyle(.paletteBg)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 24)
            .background(Color.paletteBg)
        }
    }
}

#Preview {
    WelcomeView()
}
