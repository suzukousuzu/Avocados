//
//  FactModel.swift
//  Avocados
//
//  Created by 鈴木航太 on 2024/02/28.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
