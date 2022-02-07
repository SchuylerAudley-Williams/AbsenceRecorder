//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Audley-Williams, Schuyler (SPH) on 07/02/2022.
//

import SwiftUI

struct StatisticsView: View {
    @EnvironmentObject var state: StateController
    
    var body: some View {
        Text("Statistics View")
    }
}

struct StatisticsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsView()
    }
}
