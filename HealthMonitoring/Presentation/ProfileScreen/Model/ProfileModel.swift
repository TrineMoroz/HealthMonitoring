//
//  ProfileModel.swift
//  HealthMonitoring
//
//  Created by Maxim on 21.07.2022.
//

import Foundation

struct Profile {
    let title: String
    let placeholderText: String
    
    static func getProfileData() -> [Profile] {
        return [Profile(title: "Name", placeholderText: "Enter your name"),
                Profile(title: "Date of Birth (Age)", placeholderText: "Enter your date of birth"),
                Profile(title: "Gender", placeholderText: "Enter your gender")]
    }
}
