//
//  ViewModel.swift
//  News
//
//  Created by Жанна Сергеевна  on 15/07/25.
//

import Foundation

@MainActor
final class ViewModel: ObservableObject {
    
    // MARK: - Properties
    @Published var topNews: [Article] = []
    
    init() {
        fetchNews()
    }
    
    // MARK: - Methods
    func fetchNews() {
        Task {
        do {
            let articles = try await NetworkManager.shared.getNews()
            topNews = articles.articles
        } catch {
            if let error = error as? NetworkError {
                print(error)
                }
            }
        }
    }
}
