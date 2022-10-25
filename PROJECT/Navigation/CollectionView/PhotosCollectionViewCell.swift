import UIKit

protocol ReusableView: AnyObject {
    static var identifier: String { get }
}

class PhotosCollectionViewCell: UICollectionViewCell {
    
    let photo: UIImageView = {
        let photo = UIImageView()
        photo.translatesAutoresizingMaskIntoConstraints = false
        return photo
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        contentView.addSubview(photo)
        layout()
    }
    
    func layout() {
        NSLayoutConstraint.activate([
            photo.topAnchor.constraint(equalTo: contentView.topAnchor),
            photo.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            photo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            photo.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])
    }
   
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setup(_ photosName: String) {
        photo.image = UIImage(named: photosName)
    }
}

extension PhotosCollectionViewCell: ReusableView {
    static var identifier: String {
        return String(describing: self)
    }
}
