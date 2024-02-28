//
//  AppView.swift
//  Avocados
//
//  Created by 鈴木航太 on 2024/02/27.
//

import SwiftUI

struct AppView: View {
    init() {
        let appearance: UITabBarAppearance = UITabBarAppearance()
        
        appearance.configureWithDefaultBackground()
        UITabBar.appearance().scrollEdgeAppearance = appearance
        
        UITabBar.appearance().standardAppearance = appearance
    }
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }
            
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("S")
                }
        }
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
