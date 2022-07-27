import Foundation

final class ProfileViewModel: ProfileViewModelProtocol {
    
    var profiles = Profile.getProfileData()
    
    var numberOfRows: Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> ProfileViewModelCellProtocol? {
        let profile = profiles[indexPath.row]
        return ProfileCollectionCellViewModel(profile: profile)
    }
}
