//
//  DateView.swift
//  News
//
//  Created by Жанна Сергеевна  on 21/07/25.
//

import SwiftUI

struct DateView: View {
    
// MARK: - Properties
let article: Article

// MARK: - Body
    var body: some View {
        Text(article.publishedAt.converterDate()).descriptionFont()
    }
}
