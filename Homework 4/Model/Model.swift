//
//  Model.swift
//  Homework 4
//
//  Created by Tipachel on 29.10.2021.
//

//import Foundation

struct User {
    var userInfo: BasicInfo
    var health: HealthInfo
    var education: EducationInfo
    
    }
struct BasicInfo{
    var userName: String
    var password: String
    var firstName: String
    var lastName: String
    var age: Int
    var eMail: String
}
struct HealthInfo{
    var height: Int
    var weight: Double
    var bloodType: BloodType
    var rHFactor: RHFactor
}
enum BloodType: String {
    case one = "O"
    case two = "A"
    case three = "B"
    case four = "AB"
}
enum RHFactor: Character{
    case positive = "+"
    case negative = "-"
}
struct EducationInfo{
    var school: String
    var college: String
    var courses: String
}
