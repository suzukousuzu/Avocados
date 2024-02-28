//
//  HeaderModel.swift
//  Avocados
//
//  Created by 鈴木航太 on 2024/02/28.
//

import SwiftUI

// MARK: - HeaderModel

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
