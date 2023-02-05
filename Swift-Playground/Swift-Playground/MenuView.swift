//
//  MenuView.swift
//  Swift-Playground
//
//  Created by Manuel Cespedes on 2/4/23.
//

import SwiftUI

struct MenuView: View {
    
//    @Binding var selectedMenu: Menu
    @AppStorage("selectedMenu") var selectedMenu: Menu = .compass
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        List(navigationItems) { item in
            Button {
                selectedMenu = item.menu
                presentationMode.wrappedValue.dismiss()
            } label: {
                Label(item.title, systemImage: item.icon)
                    .foregroundColor(.primary)
                .padding(8)
            }
        }
        .listStyle(.plain)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
//        MenuView(selectedMenu: .constant(.compass))
        MenuView()
    }
}
