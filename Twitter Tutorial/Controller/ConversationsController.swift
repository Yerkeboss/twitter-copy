import UIKit

class ConversationsController:UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    func configureUI () {
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    }
}
