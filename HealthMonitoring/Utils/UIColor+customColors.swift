import UIKit

extension UIColor {
    
    static let mainText = UIColor(hex: "0D1B34")
    static let secondaryText = UIColor(hex: "8696BB")
    static let successText = UIColor(hex: "09CF83")
    static let successBackground = UIColor(hex: "09CF83")
    static let defaultBackground = UIColor(hex: "D9D9D9")
    static let buttonBackground = UIColor(hex: "63B4FF")?.withAlphaComponent(0.1)
    static let buttonText = UIColor(hex: "4894FE")
    static let warningText = UIColor(hex: "FEB052")
    
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}
