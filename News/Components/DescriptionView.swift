//
//  DescriptionView.swift
//  News
//
//  Created by Жанна Сергеевна  on 21/07/25.
//

import SwiftUI

struct DescriptionView: View {
    
    // MARK: - Properties
    let article: Article
    
    // MARK: - Body
    var body: some View {
        if let description = article.description {
            Text(description)
                .titleFont()
        }
    }
}
