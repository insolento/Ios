import UIKit

class FeedViewController: UIViewController {
    let postController = PostViewController()
    
    let passwordTextField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.heightAnchor.constraint(equalToConstant: 50).isActive = true
        field.widthAnchor.constraint(equalToConstant: 230).isActive = true
        field.placeholder = "Password word"
        field.backgroundColor = .systemGray6
        field.textColor = .black
        field.font = UIFont.systemFont(ofSize: 16)
        field.autocapitalizationType = .none
        field.layer.borderWidth = 0.5
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.layer.cornerRadius = 10
        field.layer.sublayerTransform = CATransform3DMakeTranslation(8, 0, 0)
        field.text = ""
        return field
    }()
    
    
    let checkButton: UIButton = {
        let button = CustomButton(title: "Check", titleColor: .blue, completition: {print("Checked Word")})
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 230).isActive = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    
    
    let buttonToPost: UIButton = {
        let buttonToPost = UIButton(type: .system)
        buttonToPost.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        buttonToPost.setTitle("Open Post", for: .normal)
        buttonToPost.translatesAutoresizingMaskIntoConstraints = false
        buttonToPost.addTarget(self, action:#selector(openPost), for: .touchUpInside)
        return buttonToPost
    }()
    
    let secondButton: UIButton = {
        let secondButton = UIButton(type: .system)
        secondButton.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        secondButton.setTitle("Open Post", for: .normal)
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        secondButton.addTarget(self, action:#selector(openPost), for: .touchUpInside)
        return secondButton
    }()
    
    let thirdButton: UIButton = {
        let thirdButton = UIButton(type: .system)
        thirdButton.heightAnchor.constraint(equalToConstant: 50.0).isActive = true
        thirdButton.setTitle("Open Post", for: .normal)
        thirdButton.translatesAutoresizingMaskIntoConstraints = false
        thirdButton.addTarget(self, action:#selector(openPost), for: .touchUpInside)
        thirdButton.setTitle("Open Post", for: .normal)
        return thirdButton
    }()
    
    let buttonStackView: UIStackView = {
        let buttonStackView = UIStackView()
        buttonStackView.axis = .vertical
        buttonStackView.distribution = .equalSpacing
        buttonStackView.alignment = .center
        buttonStackView.spacing = 10.0
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        return buttonStackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        stackAddSubviews()
        view.addSubview(buttonStackView)
        view.addSubview(passwordTextField)
        view.addSubview(checkButton)
        layout()
        
        NotificationCenter.default.addObserver(self, selector: #selector(<#T##@objc method#>), name: <#T##NSNotification.Name?#>, object: <#T##Any?#>)
    }
    
    @objc func openPost() {
        self.navigationController?.pushViewController(postController, animated: true)
    }
    
    @objc func checkWord() {
        
    }
    

    func stackAddSubviews() {
        buttonStackView.addArrangedSubview(buttonToPost)
        buttonStackView.addArrangedSubview(secondButton)
        buttonStackView.addArrangedSubview(thirdButton)
    }
    
    func layout() {
        NSLayoutConstraint.activate([
            buttonStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            buttonStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            buttonStackView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -16.0),
            buttonStackView.heightAnchor.constraint(equalToConstant: 200.0),
            passwordTextField.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 16),
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            checkButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 16),
            checkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
}

extension NSNotification.Name {
    static let wordEvent = NSNotification.Name("wordEvent")
}

