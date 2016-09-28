//
//  Person.swift
//  swift-people
//
//  Created by Enrique Torrendell on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    
    let name : String
    var ageInYears : Int?
    var skills : [String]
    var qualifiedTutor : Bool = false
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
        self.skills = []
        self.qualifiedTutor = false
    }
    
    init(name: String) {
        self.name = name
        ageInYears = nil
        self.skills = []
        self.qualifiedTutor = false
    }
    
    init() {
        name = "John Doe"
        ageInYears = nil
        self.skills = []
        self.qualifiedTutor = false
    }
    
    func celebrateBirthday() -> String {
        if ageInYears == nil {
            return "HAPPY BIRTHDAY, \(name.uppercased())!!!"
        }
        else {
            ageInYears? += 1
            var ordinal = "th"
            if ageInYears! % 10 == 1 && ageInYears! % 100 != 11 {
                ordinal = "st"
            } else if ageInYears! % 10 == 2 && ageInYears! % 100 != 12 {
                ordinal = "nd"
            } else if ageInYears! % 10 == 3 && ageInYears! % 100 != 13 {
                ordinal = "rd"
            }
            return "HAPPY \(ageInYears!)\(ordinal.uppercased()) BIRTHDAY, \(name.uppercased())!!!"
        }
    }
    
    func learnSkillBash() {
        let newSkill = "bash"
        if skills.contains(newSkill) == true {
            print("Hey I already know this!")
        }
        else {
            skills.append(newSkill)
            qualifiedTutor = skills.count >= 4
        }
    }
    
    func learnSkillXcode()	{
        let newSkill = "Xcode"
        if skills.contains(newSkill) == true {
            print("Hey I already know this!")
        }
        else {
            skills.append(newSkill)
            qualifiedTutor = skills.count >= 4
        }
    }
    
    func learnSkillObjectiveC()	{
        let newSkill = "Objective-C"
        if skills.contains(newSkill) == true {
            print("Hey I already know this!")
        }
        else {
            skills.append(newSkill)
            qualifiedTutor = skills.count >= 4
        }
    }
    
    func learnSkillSwift()	{
        let newSkill = "Swift"
        if skills.contains(newSkill) == true {
            print("Hey I already know this!")
        }
        else {
            skills.append(newSkill)
            qualifiedTutor = skills.count >= 4
        }
    }
    
    func learnSkillInterfaceBuilder()	{
        let newSkill = "Interface Builder"
        if skills.contains(newSkill) == true {
            print("Hey I already know this!")
        }
        else {
            skills.append(newSkill)
            qualifiedTutor = skills.count >= 4
        }
    }
}

var person1 = Person(name: "John Doe", ageInYears: nil)








