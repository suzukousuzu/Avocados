//
//  SettingsView.swift
//  Avocados
//
//  Created by 鈴木航太 on 2024/02/27.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Propaty
    @State private var enableNotification: Bool = false
    @State private var backgroundRefresh: Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - Header
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("Avocadp".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            
            Form {
                // MARK: - Section #1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background refresh")
                    }
                }
                
                Section(header: Text("Application")) {
                    HStack {
                        Text("Product")
                            .foregroundColor(.gray)
                        Spacer()
                        
                        Text("Avocado Recipes")
                    }
                    
                    HStack {
                        Text("Product")
                            .foregroundColor(.gray)
                        Spacer()
                        
                        Text("Avocado Recipes")
                    }
                    
                    HStack {
                        Text("Product")
                            .foregroundColor(.gray)
                        Spacer()
                        
                        Text("Avocado Recipes")
                    }
                    
                    HStack {
                        Text("Product")
                            .foregroundColor(.gray)
                        Spacer()
                        
                        Text("Avocado Recipes")
                    }
                    
                    HStack {
                        Text("Product")
                            .foregroundColor(.gray)
                        Spacer()
                        
                        Text("Avocado Recipes")
                    }
                }
            }
        
        }
        .frame(maxWidth: .infinity)
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
