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
    @Published var bottomNews: [Article] = []
    init() {
        fetchTopNews()
        fetchBottomNews()
    }
    
    // MARK: - Methods
    func fetchTopNews() {
        Task {
        do {
            let articles = try await NetworkManager.shared.getNews(urlString: URLConstants.topNewsURL)
            topNews = articles.articles
        } catch {
            if let error = error as? NetworkError {
                print(error)
                }
            }
        }
    }
    
    func fetchBottomNews() {
        Task {
        do {
            let articles = try await NetworkManager.shared.getNews(urlString: URLConstants.bottomNewsURL)
            bottomNews = articles.articles
        } catch {
            if let error = error as? NetworkError {
                print(error)
                }
            }
        }
    }
}
