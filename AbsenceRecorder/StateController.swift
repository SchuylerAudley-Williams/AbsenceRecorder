//
//  StateController.swift
//  AbsenceRecorder
//
//  Created by Audley-Williams, Schuyler (SPH) on 07/02/2022.
//

import Foundation

class StateController: ObservableObject {
    @Published var divisions: [Division]
    
    init(){
        divisions = Division.examples
    }
}
