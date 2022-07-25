//
//  ProfileCollectionViewCell.swift
//  HealthMonitoring
//
//  Created by Maxim on 20.07.2022.
//

import UIKit
import SnapKit

class ProfileCollectionCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    let cellTitle = UILabel()
    let textField = UITextField()
    
    weak var viewModel: ProfileViewModelCellProtocol? {
        willSet(viewModel) {
            
            guard let viewModel = viewModel else { return}

            cellTitle.text = viewModel.title
            textField.placeholder = viewModel.placeholderText
        }
    }
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 12
        
        setShadows()
        setTitle()
        setTextField()
        
        contentView.addSubview(cellTitle)
        contentView.addSubview(textField)
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Methods
    
    func setShadows() {
        layer.shadowRadius = 2.0
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.1
        layer.shadowOffset = CGSize(width: 0, height: 1)
    }
    
    func setTitle() {
        cellTitle.text = "Test"
        cellTitle.font = UIFont.mainText
    }
    
    func setTextField() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(hideKeyboard))
        toolbar.setItems([flexibleSpace, doneButton], animated: false)
        textField.inputAccessoryView = toolbar
        textField.frame.size.width = contentView.frame.size.width - 32
        textField.frame.size.height = 40
        textField.placeholder = "Placeholder text"
        textField.textColor = .gray
        textField.font = UIFont.systemFont(ofSize: 24)
        textField.addBottomBorderLineWithColor(color: UIColor.black, width: 1.0)
    }
    
    func setConstraints () {
        
        cellTitle.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.top.equalToSuperview().inset(26)
        }
        
        textField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(16)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(52)
            
        }
    }
    
    @objc func hideKeyboard () {
        textField.resignFirstResponder()
    }
}
