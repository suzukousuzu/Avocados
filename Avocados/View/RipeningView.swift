//
//  RipeningView.swift
//  Avocados
//
//  Created by 鈴木航太 on 2024/02/29.
//

import SwiftUI

struct RipeningView: View {
    // MARK: - propaty
    
    let ripening: Ripening
    @State private var slideInAnimation: Bool = false
    
    var body: some View {
    
      
        
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                Circle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 120, height: 120, alignment: .center)
                )
            .zIndex(1)
            .offset(y: slideInAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10) {
                VStack(alignment: .center, spacing: 0) {
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    
                    Text(ripening.title)
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                }
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 65)
                    .frame(width: 180)
                
                Text("Hard")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius:12)
                            .fill(LinearGradient(colors: [Color.white, Color("ColorGreenLight")], startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                Spacer()
                
                Text(ripening.description)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                
                Spacer()
                
                Text(ripening.ripeness.uppercased())
                    .foregroundColor(.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)

                Text(ripening.instruction)
                
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .frame(width: 260, height: 485, alignment: .center)
            .background(LinearGradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")], startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            .padding(.horizontal)
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            withAnimation(.easeInOut(duration: 1)) {
                slideInAnimation.toggle()
            }
        }
        
    }
}

struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(ripening: ripeningData[0])
    }
}
