//
//  AsyncImageView.swift
//  News
//
//  Created by Жанна Сергеевна  on 21/07/25.
//

import SwiftUI

struct AsyncImageView: View {
    
    // MARK: - Properties
    let article: Article
    let imageHeight: CGFloat
    let imageWidtht: CGFloat
    let placeholder: CGFloat
    
    // MARK: - Body
    var body: some View {
        if let url = article.urlToImage, let imageURL = URL(string: url) {
            AsyncImage(url: imageURL) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageWidtht, height: imageHeight)
                        .cornerRadius(10)
                } else {
                    ZStack {
                        Rectangle()
                            .frame(width: placeholder, height: placeholder)
                            .foregroundStyle(.secondary)
                            .opacity(0.3)
                            .cornerRadius(10)
                        
                        Image(systemName: "photo")
                            .resizable()
                            .foregroundStyle(.secondary)
                            .scaledToFit()
                            .frame(height: 50)
                    }
                }
            }
        }
    }
}
