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
    case O
    case A
    case B
    case AB
}
enum RHFactor: Character{
    case positive = "+"
    case negative = "-"
}
struct EducationInfo{
    var school:String
    var college:String
    var courses:String
}

extension User{
    static func getInfo()-> User{
        return
            User(
                userInfo: BasicInfo(userName: "User",
                                    password: "Password",
                                    firstName: "Daria",
                                    lastName: "Uglovskaya",
                                    age: 27,
                                    eMail: "d.uglovskaya@gmail.com"),
                health: HealthInfo(height: 165,
                                   weight: 50.3,
                                   bloodType: BloodType.AB,
                                   rHFactor: RHFactor.positive),
                education: EducationInfo(school: "№215", college: "HSE", courses: "Swiftbook, Yandex"))
        
    }
    
}
