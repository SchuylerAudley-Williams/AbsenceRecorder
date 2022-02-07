//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Audley-Williams, Schuyler (SPH) on 07/02/2022.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Absence")
                }
            StatisticsView()
                .tabItem{
                    Image(systemName: "chart.pie")
                    Text("Statistics")
                }
        }
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        RootTabView()
    }
}
