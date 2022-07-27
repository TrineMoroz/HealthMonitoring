//
//  ProfileCollectionCellViewModel.swift
//  HealthMonitoring
//
//  Created by Maxim on 21.07.2022.
//

import Foundation

class ProfileCollectionCellViewModel: ProfileViewModelCellProtocol {
    
    private var profile: Profile
    
    var title: String {
        return profile.title
    }
    
    var placeholderText: String {
        return profile.placeholderText
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
