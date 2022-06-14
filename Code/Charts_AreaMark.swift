//
//  Charts_AreaMark.swift
//  SwiftChartDemo
//
//  Created by Shunzhe on 2022/06/09.
//

import SwiftUI
import Charts

struct ChartEntry_minMax: Identifiable {
    var title: String
    var minY: Int
    var maxY: Int
    var averageY: Int {
        return (minY + maxY) / 2
    }
    var id: String { return title }
}

struct Charts_AreaMark: View {
    
    @State var data: [ChartEntry_minMax] = [
        .init(title: "Today", minY: 15, maxY: 27),
        .init(title: "Tomorrow", minY: 17, maxY: 28),
        .init(title: "Saturday", minY: 18, maxY: 24),
        .init(title: "Sunday", minY: 16, maxY: 25),
        .init(title: "Monday", minY: 14, maxY: 26),
        .init(title: "Tuesday", minY: 17, maxY: 20),
        .init(title: "Wednesday", minY: 17, maxY: 23)
    ]
    
    var body: some View {
        
        Form {
            
            Chart {
                ForEach(data) { dataPoint in
                    AreaMark(
                        x: .value("Category", dataPoint.title),
                        yStart: .value("Lowest temperature", dataPoint.minY),
                        yEnd: .value("Highest temperature", dataPoint.maxY)
                    )
                    .opacity(0.3)
                    LineMark(
                        x: .value("Category", dataPoint.title),
                        y: .value("Average", dataPoint.averageY)
                    )
                }
            }
            .frame(height: 200)
            
        }
        .navigationTitle("Temperature")
        
    }
    
}

struct Charts_AreaMark_Previews: PreviewProvider {
    static var previews: some View {
        Charts_AreaMark()
    }
}
