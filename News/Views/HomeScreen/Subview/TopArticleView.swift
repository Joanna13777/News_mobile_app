//
//  TopArticleView.swift
//  News
//
//  Created by Жанна Сергеевна  on 15/07/25.
//

import SwiftUI


struct TopArticleView: View {
    
    // MARK: - Propertie
    let article: Article
    
    // MARK: - Body
    var body: some View {
        VStack {
            
            AsyncImageView(
                article: article,
                imageHeight: 150,
                imageWidtht: 260,
                placeholder: 150
            )
            
            
            VStack(alignment: .leading) {
                
                TitleView(article: article)
                Spacer()
                DateView(article: article)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 260, height: 260)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}

#Preview {
    HomeView()
}
