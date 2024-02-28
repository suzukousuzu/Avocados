//
//  DishesView.swift
//  Avocados
//
//  Created by 鈴木航太 on 2024/02/28.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment:.center, spacing: 4) {
            VStack(alignment: .leading, spacing: 4){
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                
                Divider()
                
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                
                Divider()
                
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                
                Divider()
                
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
            }
            VStack(alignment: .center, spacing: 1) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            VStack(alignment: .trailing,spacing: 4) {
                HStack {
                    Text("Guacmamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }
                
                Divider()
                
                HStack {
                    Text("Guacmamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }
                
                Divider()
                
                HStack {
                    Text("Guacmamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }
                
                Divider()
                
                HStack {
                    Text("Guacmamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }
            }
        }
        .font(.system(.callout, design: .serif))
        .foregroundColor(Color.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 288))
    }
}
