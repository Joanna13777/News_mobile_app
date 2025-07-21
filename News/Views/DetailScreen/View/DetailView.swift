//
//  DetailView.swift
//  News
//
//  Created by Жанна Сергеевна  on 20/07/25.
//

import SwiftUI

struct DetailView: View {
    
    // MARK: - Properties
    let article: Article
    let spacing: CGFloat = 20
    
    // MARK: - Body
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            
            ScrollView(.vertical, showsIndicators: false) {
                MainImageView(article: article)
                
                VStack(alignment: .leading, spacing: spacing) {
                    
                    TitleView(article: article)
                    DescriptionView(article: article)
                    DateView(article: article)
                }
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.background)
                .background(GradientAvatarView())
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
            
            BackButtonView()
                .padding(.leading)
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

