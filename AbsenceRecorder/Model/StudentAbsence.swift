//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Audley-Williams, Schuyler (SPH) on 08/02/2022.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isAbsent: Bool
    
    init(student: Student) {
        self.student = student
        isAbsent = false
    }
    
    #if DEBUG
    static let example = Student.example
    #endif
}
