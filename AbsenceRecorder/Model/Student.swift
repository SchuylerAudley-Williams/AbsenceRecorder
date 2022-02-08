//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Audley-Williams, Schuyler (SPH) on 02/02/2022.
//

import Foundation

class Student {
    let forename: String
    let surname: String
    let birthday: String
    
    init(forename: String, surname: String, birthday: String) {
        self.forename = forename
        self.surname = surname
        self.birthday = birthday
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student(forename: "Roberto", surname: "Baggio", birthday: "\(Date())"))
    static let examples = [example]
    #endif
}
