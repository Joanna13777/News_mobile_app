//
//  ExtensionText.swift
//  News
//
//  Created by Жанна Сергеевна  on 15/07/25.
//

import SwiftUI

extension Text {
    func titleFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 16, weight: .bold, design: .rounded))
            .opacity(0.8)
    }
    
    func descriptionFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 14, weight: .regular, design: .rounded))
            .opacity(0.8)
    }
}
