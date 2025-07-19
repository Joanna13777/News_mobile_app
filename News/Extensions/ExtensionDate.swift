//
//  ExtensionDate.swift
//  News
//
//  Created by Жанна Сергеевна  on 15/07/25.
//

import Foundation

extension Date {
    func converterDate() -> String {
        return formatted(.dateTime.hour().minute().day().month().year())
    }
}
