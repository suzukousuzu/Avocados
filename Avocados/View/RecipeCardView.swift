//
//  RecipeCardView.swift
//  Avocados
//
//  Created by 鈴木航太 on 2024/02/28.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - Propary
    var recipe: Recipe
    var hapticImapct = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    VStack {
                        HStack {
                            Spacer()
                            Image(systemName: "bookmark")
                            .font(.title.weight(.light))
                            .foregroundColor(.white)
                            .imageScale(.small)
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x:0, y: 0)
                        .padding(.trailing, 20)
                        .padding(.top, 22)
                        }
                        Spacer()
                    }
                )
            
            VStack(alignment: .leading, spacing: 12) {
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                RecipeRatingView(recipe: recipe)
                
               RecipeCookingView(recipe: recipe)
                
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"),radius: 8, x: 0, y: 0)
        .onTapGesture {
            hapticImapct.impactOccurred()
            showModal = true
        }
        .sheet(isPresented: $showModal) {
            RecipeDetailView(recipe: recipe)
        }
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
