//
//  DetailView.swift
//  News
//
//  Created by Жанна Сергеевна  on 20/07/25.
//

import SwiftUI

struct DetailView: View {
    
    let article: Article
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            MainImageView(article: article)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(article.title)
                    .titleFont()
                
                if let description = article.description {
                    Text(description)
                        .titleFont()
                }
                
                Text(article.publishedAt.converterDate()).descriptionFont()
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.background)
            .background(GradientAvatarView())
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
        
    }
}

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
    DetailView(
        article: Article(
            title: "Example",
            description: "gfhghhj",
            url: "",
            urlToImage: "https://placebeard.it/1280x720",
            publishedAt: Date()
        )
    )
}
