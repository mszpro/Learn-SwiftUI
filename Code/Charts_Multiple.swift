//
//  Charts_Multiple.swift
//  SwiftChartDemo
//
//  Created by Shunzhe on 2022/06/09.
//

import SwiftUI
import Charts

struct DataCollection: Identifiable {
    var collectionName: String
    var data: [ChartEntry]
    var id: String { return collectionName }
}

struct Charts_Multiple: View {
    
    static let demoData1: [ChartEntry] = [
        .init(title: "Morning", value: 20),
        .init(title: "Noon", value: 27),
        .init(title: "Evening", value: 21)
    ]
    static let demoData2: [ChartEntry] = [
        .init(title: "Morning", value: 13),
        .init(title: "Noon", value: 14),
        .init(title: "Evening", value: 8)
    ]
    
    @State var dataCollections: [DataCollection] = [
        .init(collectionName: "Kyoto", data: demoData1),
        .init(collectionName: "Hokkaido", data: demoData2)
    ]
    
    var body: some View {
        
        Form {
            
            Chart(dataCollections) { collection in
                ForEach(collection.data) { dataPoint in
                    PointMark(
                        x: .value("Value", dataPoint.value),
                        y: .value("Category", dataPoint.title)
                    )
                    .foregroundStyle(by: .value("City", collection.collectionName))
                }
            }
            .frame(height: 200)
            
        }
        .navigationTitle("Temperature")
        
    }
    
}

struct Charts_Multiple_Previews: PreviewProvider {
    static var previews: some View {
        Charts_Multiple()
    }
}
