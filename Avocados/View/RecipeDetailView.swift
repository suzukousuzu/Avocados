//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by 鈴木航太 on 2024/02/29.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: - propaty
    
    var recipe: Recipe
    
    @State private var pulsate: Bool = false
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    // Title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    // Rating
                    RecipeRatingView(recipe: recipe)
                    
                    // cooking
                    RecipeCookingView(recipe: recipe)
                    
                    //Ingredient
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { item in VStack(alignment: .leading, spacing: 5) {
                            Text(item)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            Divider()
                            
                        }
                            
                        }
                    }
                    
                    //Instructions
                    Text("Instruction")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) { item in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width:42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }
                        
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(pulsate ? 1: 0.6)
                            .scaleEffect(pulsate ? 1.2 : 0.8)
                        
                })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }
            }
        )
        .onAppear() {
            withAnimation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                pulsate.toggle()
            }
          
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
    }
}
