//
//  ContentView.swift
//  Swift-Playground
//
//  Created by Manuel Cespedes on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
//    @State var selectedMenu: Menu = .compass
    @AppStorage("selectedMenu") var selectedMenu: Menu = .compass
    @GestureState var press = false
    
    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 1)
            .updating($press) { currenState, gestureState, transaction in
                gestureState = currenState
            }
            .onEnded { value in
                showMenu = true
            }
    }
    
    var body: some View {
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            switch selectedMenu {
            case .compass:
                MessageView()
            case .card:
                Text("Card")
            case .charts:
                DetailView()
            case .radial:
                Text("Radial")
            case .halfsheet:
                MenuView()
            case .gooey:
                Text("Gooey")
            case .actionbutton:
                Text("Action Button")
            }
        }
        
        // hack to accept multiple gestures
        .onTapGesture {}
        
        .gesture(longPress)
        .sheet(isPresented: $showMenu) {
            MenuView()
                .presentationDetents([.medium, .large])
        }
    }
}

// This area wont be showed in app so you can use to TEST
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
