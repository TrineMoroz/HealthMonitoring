import UIKit

final class MainRouter {
    
    private var maincVC: UITabBarController?

    func getMainScreen() -> UITabBarController {
        let tabBarVC = UITabBarController()
        let startViewController = MainViewController()
        let profileViewController = ProfileViewController()
        
        tabBarVC.viewControllers = [startViewController, profileViewController]
        if let tabBarItem1 = tabBarVC.tabBar.items?[0] {
            tabBarItem1.title = "Main"
            tabBarItem1.image = UIImage(systemName: "house")
        }
        
        if let tabBarItem2 = tabBarVC.tabBar.items?[1] {
            tabBarItem2.title = "Profile"
            tabBarItem2.image = UIImage(systemName: "person")
        }
        
        self.maincVC = tabBarVC
        return tabBarVC
    }
}
