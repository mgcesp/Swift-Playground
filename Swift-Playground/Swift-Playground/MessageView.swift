//
//  MessageView.swift
//  Swift-Playground
//
//  Created by Manuel Cespedes on 2/4/23.
//

import SwiftUI

struct MessageView: View {
    @State var time = 0.0
    @State var showMessage = true
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        content
            .opacity(showMessage ? 1 : 0)
            .scaleEffect(showMessage ? 1 : 0)
            .rotationEffect(.degrees(showMessage ? 0 : 30))
            .offset(y: showMessage ? 0 : 500)
            .blur(radius: showMessage ? 0 : 20)
            .padding(16)
            .dynamicTypeSize(.xSmall ... .xxxLarge)
    }
    
    var content: some View {
        VStack (alignment: .center, spacing: 16) {
            
            Image(systemName: "timelapse", variableValue: time)
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .font(.system(size: 64))
                .fontWeight(.thin)
                .onReceive(timer) { value in
                    if time < 1.0 {
                        time += 0.1
                    } else {
                        time = 0.0
                    }
                }
            
            Text("Switching Apps".uppercased())
                .font(.largeTitle.width(.condensed))
                .fontWeight(.bold)
            
            Text("Tap and hold any part of the screen to show menu")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .fontWeight(.medium)
            
            Button {
                // Action
                withAnimation(.easeInOut) {
                    showMessage = false
                }
                
            } label: {
                Text("Got it")
                    .padding(.all)
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.2).gradient)
                    .cornerRadius(16)
                    .background(
                        stroke
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
            stroke
        )
        .shadow(color: .black.opacity(0.3), radius: 16, y: 16)
        .frame(maxWidth: 500)
    }
    
    var stroke: some View {
        RoundedRectangle(cornerRadius: 16)
            .stroke()
            .foregroundStyle(.linearGradient(colors: [.white.opacity(0.5    ), .clear, .white.opacity(0.5), .clear], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
            .background(Image("Wallpaper 2"))
    }
}
