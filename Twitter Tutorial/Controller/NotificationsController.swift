import UIKit

class NotificationsController:UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        configureUI()
    }
    func configureUI () {
        
        view.backgroundColor = .white
        navigationItem.title = "Notifications"
    }
}
