//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Audley-Williams, Schuyler (SPH) on 02/02/2022.
//

import Foundation


class Division {
    let code: String
    var students: [Student] = []
    var absences: [Absence] = []
    
    init(code:String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code:code)
        
        //loop as many times as the parameter size says and add them to the students property
        for i in 1...size {
            let student = Student(forename: "Forename\(i)", surname: "Surname\(i)", birthday: "\(Date())")
            division.students.append(student)
        }
        
        return division
    }
    
    static let examples = [Division.createDivision(code: "vBY-1", of: 8),
                           Division.createDivision(code: "vCX-2", of: 7),
                           Division.createDivision(code: "vDK-1", of: 10),
                           Division.createDivision(code: "vCE-1", of: 9)]
    #endif
}
