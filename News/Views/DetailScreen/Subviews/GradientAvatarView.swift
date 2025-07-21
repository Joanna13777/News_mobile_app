//
//  GradientAvatarView.swift
//  News
//
//  Created by Жанна Сергеевна  on 21/07/25.
//

import SwiftUI

struct GradientAvatarView: View {
    var body: some View {
        GeometryReader { _ in
            LinearGradient(
                colors: [Color(UIColor.systemBackground), .clear],
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: SizeConstants.avatarHeight / 4)
            .offset(y: -SizeConstants.avatarHeight / 4)
        }
    }
}

#Preview {
    GradientAvatarView()
}
