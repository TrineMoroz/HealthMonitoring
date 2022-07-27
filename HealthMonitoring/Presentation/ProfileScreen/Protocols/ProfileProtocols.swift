//
//  ProfileProtocols.swift
//  HealthMonitoring
//
//  Created by Maxim on 21.07.2022.
//

import Foundation

protocol ProfileViewModelProtocol: AnyObject {
    var numberOfRows: Int { get }
    func cellViewModel(forIndexPath indexPath: IndexPath) -> ProfileViewModelCellProtocol?
}

protocol ProfileViewModelCellProtocol: AnyObject {
    var title: String { get }
    var placeholderText: String { get }
}
