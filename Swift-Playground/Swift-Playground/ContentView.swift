//
//  ContentView.swift
//  Swift-Playground
//
//  Created by Manuel Cespedes on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack (alignment: .center, spacing: 16) {
            
            Image(systemName: "timelapse", variableValue: 0.2)
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .font(.system(size: 64))
                .fontWeight(.thin)
            
            Text("Switching Apps".uppercased())
                .font(.largeTitle.width(.condensed))
                .fontWeight(.bold)
            
            Text("Tap and hold any part of the screen to show menu")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .fontWeight(.medium)
            
            Button {
                
            } label: {
                Text("Got it")
                    .padding(.all)
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.2).gradient)
                    .cornerRadius(16)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke()
                            .foregroundStyle(.linearGradient(colors: [.white.opacity(0.5    ), .clear, .white.opacity(0.5), .clear], startPoint: .topLeading, endPoint: .bottomTrailing))
                    )
                    
                    
            }
            .accentColor(.primary)
            .shadow(radius: 10)
//            .buttonStyle(.borderedProminent)
//            .controlSize(.large)
//            .accentColor(.primary)

        }
        .padding(32)
        .background(.ultraThinMaterial)
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke()
                .foregroundStyle(.linearGradient(colors: [.white.opacity(0.5    ), .clear, .white.opacity(0.5), .clear], startPoint: .topLeading, endPoint: .bottomTrailing))
        )
        .shadow(color: .black.opacity(0.3), radius: 16, y: 16)
        .frame(maxWidth: 500)
        .padding(16)
        .dynamicTypeSize(.xSmall ... .xxxLarge)
        
    }
}

// This area wont be showed in app so you can use to TEST
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Image("Wallpaper 2"))
    }
}
