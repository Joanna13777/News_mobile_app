//
//  NetworkError.swift
//  News
//
//  Created by Жанна Сергеевна  on 15/07/25.
//

import Foundation

enum NetworkError: String, Error {
    case invalidURL = "Invalid URL"
    case invalidResponse = "Invalid response from the server"
    case invalidData = "The data received from the server is invalid"
    }
