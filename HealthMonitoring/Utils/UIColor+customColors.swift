import UIKit

extension UIColor {
    
    static let mainText = UIColor(hex: 0x0D1B34)
    static let secondaryText = UIColor(hex: 0x8696BB)
    static let successText = UIColor(hex:0x09CF83)
    static let buttonText = UIColor(hex:0x4894FE)
    static let warningText = UIColor(hex:0xFEB052)
    
    static let successBackground = UIColor(hex:0x09CF83)
    static let defaultBackground = UIColor(hex:0xD9D9D9)
    static let buttonBackground = UIColor(hex:0x63B4FF).withAlphaComponent(0.1)
    static let iconBackground = UIColor(hex:0xFAFAFA)
    
    static let separator = UIColor(hex:0xF5F5F5)
    
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(hex: Int) {
       self.init(
           red: (hex >> 16) & 0xFF,
           green: (hex >> 8) & 0xFF,
           blue: hex & 0xFF
       )
   }
}
