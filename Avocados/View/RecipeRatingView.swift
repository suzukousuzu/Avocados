//
//  RevipeRatingView.swift
//  Avocados
//
//  Created by 鈴木航太 on 2024/02/29.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - propaty
    
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(.yellow)
            }
        }
        
    }
}

struct RevipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipeData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
