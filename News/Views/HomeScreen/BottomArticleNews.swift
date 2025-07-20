//
//  BottomArticleNews.swift
//  News
//
//  Created by Жанна Сергеевна  on 20/07/25.
//

import SwiftUI

struct BottomArticleNews: View {
    
    // MARK: - Properties
    let article: Article
    
    // MARK: - Body
    var body: some View {
        VStack {
        
        if let url = article.urlToImage, let imageURL = URL(string: url) {
            AsyncImage(url: imageURL) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .cornerRadius(10)
                } else {
                    ZStack {
                        Rectangle()
                            .frame(width: 120, height: 120)
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
        
        VStack(alignment: .leading) {
            Text(article.title)
                .titleFont()
            
            Spacer()
            
            Text(article.publishedAt.converterDate()).descriptionFont()
        }
    }
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}
