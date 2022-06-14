//
//  Charts_Single.swift
//  SwiftChartDemo
//
//  Created by Shunzhe on 2022/06/09.
//

import SwiftUI
import Charts

struct Charts_Single: View {
    
    static let demoData1: [ChartEntry] = [
        .init(title: "A", value: 5),
        .init(title: "B", value: 10),
        .init(title: "C", value: 8)
    ]
    static let demoData2: [ChartEntry] = [
        .init(title: "A", value: 5),
        .init(title: "A", value: 10, color: .blue),
        .init(title: "B", value: 10),
        .init(title: "C", value: 8)
    ]
    
    @State var data: [ChartEntry] = [
        .init(title: "A", value: 5),
        .init(title: "B", value: 10),
        .init(title: "C", value: 8)
    ]
    @State private var dataSetSelection: Int = 0
    
    var body: some View {
        
        Form {
            
            Picker("Dataset selection", selection: $dataSetSelection) {
                Text("Dataset 1")
                    .tag(0)
                Text("Dataset 2")
                    .tag(1)
            }
            .onChange(of: dataSetSelection) { newValue in
                withAnimation {
                    if newValue == 0 {
                        self.data = Charts_Single.demoData1
                    } else if newValue == 1 {
                        self.data = Charts_Single.demoData2
                    }
                }
            }
            
            Chart {
                ForEach(data) { dataPoint in
                    PointMark(
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

struct Charts_Single_Previews: PreviewProvider {
    static var previews: some View {
        Charts_Single()
    }
}
