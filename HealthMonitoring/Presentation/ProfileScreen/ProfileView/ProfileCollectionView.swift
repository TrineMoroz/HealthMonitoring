//
//  ProfileCollectionView.swift
//  HealthMonitoring
//
//  Created by Maxim on 20.07.2022.
//

import UIKit

class ProfileCollectionView: UICollectionView {
    
    var viewModel: ProfileViewModelProtocol?
    
    // MARK: - Init
    
    init() {
        
        let layout = UICollectionViewFlowLayout()
        
        super.init(frame: .zero, collectionViewLayout: layout)
        
        viewModel = ProfileViewModel()
        
        setLayout(layout: layout)
        
        backgroundColor = .none
        delegate = self
        dataSource = self
        register(ProfileCollectionCell.self, forCellWithReuseIdentifier: "ProfileCustomCell")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Methods
    
    func setLayout(layout: UICollectionViewFlowLayout ) {
        layout.itemSize = CGSize(width: 327, height: 102)
        layout.minimumLineSpacing = 24
        layout.minimumInteritemSpacing = 10
    }
    
}

// MARK:  Extension ProfileCollectionView Delegate/DataSource

extension ProfileCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel?.numberOfRows ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = self.dequeueReusableCell(withReuseIdentifier: "ProfileCustomCell", for: indexPath) as? ProfileCollectionCell, let viewModel = viewModel {
            let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
            cell.viewModel = cellViewModel
            
            return cell
        }
        return UICollectionViewCell()
    }
}
