import UIKit

class FeedViewController: UIViewController {
    let postController = PostViewController()
    
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
        layout()
    }
    
    @objc func openPost() {
        self.navigationController?.pushViewController(postController, animated: true)
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
            buttonStackView.heightAnchor.constraint(equalToConstant: 200.0)
        ])
    }
}
