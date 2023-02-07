//
//  Data.swift
//  Swift-Playground
//
//  Created by Manuel Cespedes on 2/4/23.
//

import Foundation

struct NavigationItem: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var icon: String
    var menu: Menu
}

var navigationItems = [
    NavigationItem(title: "Compass App", icon: "safari", menu: .compass),
    NavigationItem(title: "3D Card", icon: "lanyardcard", menu: .card),
    NavigationItem(title: "Radial Layout", icon: "clock", menu: .radial),
    NavigationItem(title: "Gooey Action Button", icon: "plus.circle", menu: .actionbutton),
    NavigationItem(title: "Gooey Menu", icon: "drop", menu: .gooey),
    NavigationItem(title: "Charts", icon: "chart.xyaxis.line", menu: .charts),
    NavigationItem(title: "Half Sheet", icon: "rectangle.portrait.bottomhalf.filled", menu: .halfsheet),
]

enum Menu: String {
    case compass
    case card
    case charts
    case radial
    case halfsheet
    case gooey
    case actionbutton
}

struct Value:Identifiable {
    var id = UUID()
    var day: String
    var value: Double
}

let data = [
    Value(day: "Jun 1", value: 200),
    Value(day: "Jun 2", value: 96),
    Value(day: "Jun 3", value: 312),
    Value(day: "Jun 4", value: 256),
    Value(day: "Jun 5", value: 505),
    Value(day: "Jun 6", value: 128),
    Value(day: "Jun 7", value: 240),
]

let data2 = [
    Value(day: "Jun 1", value: 151),
    Value(day: "Jun 2", value: 192),
    Value(day: "Jun 3", value: 176),
    Value(day: "Jun 4", value: 158),
    Value(day: "Jun 5", value: 401),
    Value(day: "Jun 6", value: 128),
    Value(day: "Jun 7", value: 240),
]

let data3 = [
    Value(day: "Jun 1", value: 222),
    Value(day: "Jun 2", value: 111),
    Value(day: "Jun 3", value: 333),
    Value(day: "Jun 4", value: 444),
    Value(day: "Jun 5", value: 777),
    Value(day: "Jun 6", value: 555),
    Value(day: "Jun 7", value: 666),
]
