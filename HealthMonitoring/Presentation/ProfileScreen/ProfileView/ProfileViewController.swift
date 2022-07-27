import UIKit
import SnapKit

final class ProfileViewController: UIViewController {
    
    // MARK: - Properties
    
    var profileCollection = ProfileCollectionView()
    var profileButton = UIButton()
    
    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setProfileButton()
        
        view.addSubview(profileCollection)
        view.addSubview(profileButton)
        
        setConstraints()
    }
    
    // MARK: - Methods
    
    func setConstraints() {
        profileButton.snp.makeConstraints { make in
            make.width.equalTo(189)
            make.height.equalTo(50)
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(64)
        }
        
        profileCollection.snp.makeConstraints { make in
            make.top.equalTo(profileButton.snp.bottom).inset(-24)
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
    func setProfileButton() {
        profileButton.backgroundColor = UIColor(hex: "#63B4FF1A")
        profileButton.setTitle("Personal profile", for: .normal)
        profileButton.setTitleColor(.blue, for: .normal)
        profileButton.titleLabel?.font = UIFont.mainText
        profileButton.isEnabled = false
        profileButton.layer.cornerRadius = 25
    }
}
