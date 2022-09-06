import Foundation
import UIKit


class CustomButton: UIButton {
    
    var title: String = ""
    var color: UIColor = UIColor()
    var function: () -> ()
    
    required init(title: String, titleColor: UIColor, completition: @escaping () -> ()) {
        function = completition
        super.init(frame: .zero)
        self.title = title
        self.color = titleColor
        backgroundColor = .red
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        self.setTitle("\(title)", for: .normal)
        self.backgroundColor = color
        self.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    @objc func buttonTapped() {
        function()
    }
}
