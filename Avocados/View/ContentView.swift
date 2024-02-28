//
//  ContentView.swift
//  Avocados
//
//  Created by 鈴木航太 on 2024/02/27.
//

import SwiftUI

struct ContentView: View {
    
    var headers: [Header] = headersData
    var facts: [Fact] = factData
    var recipes: [Recipe] = recipeData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - Header
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 8) {
                        ForEach(headers) { header in
                            HeaderView(header: header)
                        }
                       
                    }
                }
                
                Text("Avocad Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK: - Avocad Facts
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60 ) {
                        ForEach(facts) { fact in
                            FactsView(fact: fact)
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading)
                    .padding(.trailing, 20)
                    
                }
                
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes) { recipe in
                        RecipeCardView(recipe: recipe)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .modifier(TitleModifier())
    
                    
                    Text("ffsalfjsljfslafjdlsfjsdlfjlsjfsljfslkfshsgjslfsfksjfslfjdsljfljslffafdfsdfsdffasdfsafsfdasfsdfasfdfdsfj")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight: 640)
                    
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
            

        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(10)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factData, recipes: recipeData)
    }
}
