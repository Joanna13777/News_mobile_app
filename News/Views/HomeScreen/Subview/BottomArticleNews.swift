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
            
            AsyncImageView(
                article: article,
                imageHeight: 120,
                imageWidtht: 120,
                placeholder: 120
            )
            
        VStack(alignment: .leading) {
            TitleView(article: article)
            Spacer()
            DescriptionView(article: article)
        }
    }
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}
