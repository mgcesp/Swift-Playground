//
//  ChartView.swift
//  Swift-Playground
//
//  Created by Manuel Cespedes on 2/6/23.
//

import SwiftUI
import Charts

struct ChartView: View {
    var body: some View {
        VStack(spacing: 40) {
//            Chart {
//                ForEach(data) { item in
//                    BarMark(x: .value("Day", item.day), y: .value("Value", item.value))
//                        .foregroundStyle(.linearGradient(colors: [.blue,.purple], startPoint: .top, endPoint: .bottom))
//                }
//            }
//            .frame(height: 300)
            Chart {
                ForEach(data) { item in
                    LineMark(x: .value("Day", item.day), y: .value("Value", item.value),series: .value("Year", "2023"))
                        .interpolationMethod(.catmullRom)
                        .symbol(by:.value("Year", "2023"))
                        .foregroundStyle(by: .value("Year","2023"))
                }
                ForEach(data2) { item in
                    LineMark(x: .value("Day", item.day), y: .value("Value", item.value),series: .value("Year", "2022"))
                        .interpolationMethod(.catmullRom)
                        .symbol(by:.value("Year", "2022"))
                        .foregroundStyle(by: .value("Year","2022"))
                }
                ForEach(data3) { item in
                    LineMark(x: .value("Day", item.day), y: .value("Value", item.value),series: .value("Year", "2021"))
                        .interpolationMethod(.catmullRom)
                        .symbol(by:.value("Year", "2021"))
                        .foregroundStyle(by: .value("Year","2021"))
                }
            }
            .frame(height: 300)
            .padding(20)
        }
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
