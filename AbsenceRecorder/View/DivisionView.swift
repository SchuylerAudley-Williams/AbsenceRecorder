//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Audley-Williams, Schuyler (SPH) on 02/02/2022.
//

import SwiftUI

struct DivisionView: View {
    @EnvironmentObject var state: StateController
    @State private var currentDate: Date = Date()
    
    var body: some View {
        NavigationView{
            List(state.divisions, id: \.self.code) { division in
                NavigationLink(destination: AbsenceView(absence: division.createAbsenceOrGetExistingIfAvailable(for: currentDate))) {
                    DivisionItem(division: division)
                }
            }
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {currentDate = currentDate.previousDay() }) {
                        Image(systemName: "arrow.backward")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {currentDate = currentDate.nextDay() }) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionView()
            .environmentObject(StateController())
    }
}
