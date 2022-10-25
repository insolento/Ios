import UIKit

class ProfileHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var statusLabel: String = "Waiting for something..."
    
    let showStatusButton: UIButton = {
        let statusButton = UIButton(type: .system)
        statusButton.setTitle("Show status", for: .normal)
        statusButton.setTitleColor(.white, for: .normal)
        statusButton.backgroundColor = .blue
        statusButton.layer.cornerRadius = 4
        statusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        statusButton.layer.shadowRadius = 4
        statusButton.layer.shadowColor = UIColor.black.cgColor
        statusButton.layer.shadowOpacity = 0.7
        statusButton.addTarget(nil,action:#selector(buttonAction), for: .touchUpInside)
        return statusButton
    }()
    
    let catImageView: UIView = {
        let catImage = UIView()
        catImage.layer.contents = Constants.avatarImageView
        catImage.layer.borderWidth = 3
        catImage.layer.masksToBounds = false
        catImage.layer.borderColor = UIColor.white.cgColor
        catImage.layer.cornerRadius = 50
        catImage.clipsToBounds = true
        return catImage
    }()
    
    let statusTextField: UILabel = {
        let textField = UILabel()
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        return textField
    }()
    
    let hipsterCat: UILabel = {
        let cat = UILabel()
        cat.text = "Hipster Cat"
        cat.font = UIFont.systemFont(ofSize: 18)
        cat.textColor = .black
        cat.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return cat
    }()

    private func setUpView() {
        autoresizingMaks()
        addSubviews()
        layout()
        backgroundColor = .systemGray6
        statusTextField.text = statusLabel
    }
    
    @objc func buttonAction() {
        print(statusLabel)
    }
    
    func autoresizingMaks() {
        catImageView.translatesAutoresizingMaskIntoConstraints = false
        showStatusButton.translatesAutoresizingMaskIntoConstraints = false
        hipsterCat.translatesAutoresizingMaskIntoConstraints = false
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addSubviews() {
        self.addSubview(catImageView)
        self.addSubview(showStatusButton)
        self.addSubview(hipsterCat)
        self.addSubview(statusTextField)
    }
    
    func layout() {
        NSLayoutConstraint.activate([
            catImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            catImageView.topAnchor.constraint(equalTo: self.bottomAnchor, constant: 16.0),
            catImageView.heightAnchor.constraint(equalToConstant: 100.0),
            catImageView.widthAnchor.constraint(equalToConstant: 100.0),
            hipsterCat.leadingAnchor.constraint(equalTo: catImageView.trailingAnchor, constant: 20),
            hipsterCat.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            hipsterCat.topAnchor.constraint(equalTo: self.bottomAnchor, constant: 27),
            showStatusButton.topAnchor.constraint(equalTo: catImageView.bottomAnchor, constant: 16),
            showStatusButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            showStatusButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            showStatusButton.heightAnchor.constraint(equalToConstant: 50),
            statusTextField.bottomAnchor.constraint(equalTo: showStatusButton.topAnchor, constant: -34),
            statusTextField.leadingAnchor.constraint(equalTo: catImageView.trailingAnchor, constant: 20),
            statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
    }

}
