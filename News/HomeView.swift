//
//  ContentView.swift
//  News
//
//  Created by Жанна Сергеевна  on 15/07/25.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Properties
    @State var news: [Article] = []
    
    // MARK: - Body
    var body: some View {
        VStack {
            ForEach(news, id: \.url) { article in
                Text(article.title)
            }
        }
        .onAppear {
            Task {
                await fetchNews()
            }
        }
    }
    
    // MARK: - Methods
    func fetchNews() async {
        do {
            let articles = try await NetworkManager.shared.getNews()
            news = articles.articles
        } catch {
            if let error = error as? NetworkError {
                print(error)
            }
            
        }
    }
}

#Preview {
    HomeView()
}
