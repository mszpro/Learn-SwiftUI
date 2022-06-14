//
//  Charts_Single.swift
//  SwiftChartDemo
//
//  Created by Shunzhe on 2022/06/09.
//

import SwiftUI
import Charts

struct Charts_BarChart: View {
    
    let data: [ChartEntry] = [
        .init(title: "A", value: 5),
        .init(title: "B", value: 10),
        .init(title: "C", value: 8)
    ]
    
    var body: some View {
        
        Form {
            
            Chart {
                ForEach(data) { dataPoint in
                    BarMark(
                        x: .value("Category", dataPoint.title),
                        y: .value("Value", dataPoint.value)
                    )
                    .foregroundStyle(dataPoint.color)
                }
            }
            .frame(height: 200)
            
        }
        
    }
    
}

struct Charts_BarChart_Previews: PreviewProvider {
    static var previews: some View {
        Charts_BarChart()
    }
}
