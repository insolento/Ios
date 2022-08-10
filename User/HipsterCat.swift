import Foundation
import UIKit

let hipsterCat = CurrentUserService(user:
                                    User(fullName: "Hipster Cat", profileImage: UIImage(named: "cat")!, status: "Waiting for wiskas..."))
let notHipsterCat = CurrentUserService(user:
                                    User(fullName: "Not Hipster Cat", profileImage: UIImage(named: "photo3")!, status: "Waiting for ..."))
