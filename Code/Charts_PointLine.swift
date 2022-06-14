//
//  Charts_PointLine.swift
//  SwiftChartDemo
//
//  Created by Shunzhe on 2022/06/09.
//

import SwiftUI
import Charts

struct Charts_PointLine: View {
    
    static let demoData1: [ChartEntry] = [
        .init(title: "A", value: 5),
        .init(title: "B", value: 10),
        .init(title: "C", value: 8),
        .init(title: "D", value: 13),
        .init(title: "E", value: 20)
    ]
    
    var body: some View {
        
        Chart {
            ForEach(Charts_PointLine.demoData1) { dataPoint in
                LineMark(
                    x: .value("Category", dataPoint.title),
                    y: .value("Value", dataPoint.value)
                )
                .foregroundStyle(dataPoint.color)
                PointMark(
                    x: .value("Category", dataPoint.title),
                    y: .value("Value", dataPoint.value)
                )
            }
        }
        .frame(height: 200)
        .padding()
        
    }
    
}

struct Charts_PointLine_Previews: PreviewProvider {
    static var previews: some View {
        Charts_PointLine()
    }
}
