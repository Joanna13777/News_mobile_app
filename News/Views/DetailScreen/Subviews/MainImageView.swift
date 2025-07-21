//
//  MainImageView.swift
//  News
//
//  Created by Жанна Сергеевна  on 21/07/25.
//

import SwiftUI

struct MainImageView: View {
    
    // MARK: - Properties
    let article: Article
    
    // MARK: - Body
    var body: some View {
        GeometryReader { reader in
            if let url = article.urlToImage, let imageURL = URL(string: url) {
                AsyncImage(url: imageURL) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y: -reader.frame(in: .global).minY)
                            .frame(width: SizeConstants.screenWidht, height: reader.frame(in: .global).minY + SizeConstants.avatarHeight + 10)
                    }
                }
            }
        }
        .frame(height: SizeConstants.avatarHeight)
    }
}
