import UIKit

class BackgroungTableUIView: UIView {

    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 12
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
