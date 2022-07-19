import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let router = MainRouter()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = router.getMainScreen()
        window?.makeKeyAndVisible()
        
        return true
    }


}

