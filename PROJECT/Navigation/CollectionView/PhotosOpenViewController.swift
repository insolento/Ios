import UIKit

class PhotosOpenViewController: UIViewController {
    
    let photo: UIImageView = {
        let photo = UIImageView()
        photo.contentMode = .scaleAspectFit
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(photo)
        layout()
    }
    
    func setup(_ image: String) {
        photo.image = UIImage(named: image)
    }
    
    func layout() {
        NSLayoutConstraint.activate([
            photo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            photo.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            photo.widthAnchor.constraint(equalTo: view.widthAnchor),
            photo.heightAnchor.constraint(equalTo: view.widthAnchor)
        ])
    }
}
