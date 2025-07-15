//
//  Model.swift
//  News
//
//  Created by Жанна Сергеевна  on 15/07/25.
//

import Foundation

// MARK: - Welcome
struct News: Decodable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Decodable {
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: Date
}
