//
//  UploadTweetController.swift
//  Twitter Tutorial
//
//  Created by Yerkegali Zhamalbekov on 12.03.2023.
//

import UIKit

class UploadTweetController: UIViewController {
    
    //MARK: - Properties
    
    private let user: User
    
    private lazy var actionButton: UIButton = {
        let button = UIButton(type:.system)
        button.backgroundColor = .twitterBlue
        button.setTitle("Tweet", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.setTitleColor(.white, for: .normal)
        
        button.frame = CGRect(x:0,y:0,width:64,height:32)
        button.layer.cornerRadius = 32 / 2
        
        button.addTarget(self, action: #selector(handleUploadTweet), for: .touchUpInside)
        return button
    }()
    private let profileImageView:UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds =  true
        iv.setDimensions(width: 48, height: 48)
        iv.layer.cornerRadius = 48 / 2
        iv.backgroundColor = .twitterBlue
        return iv
    } ()
    //MARK: - Lifecycle
    
    init(user: User) {
        self.user = user
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder:NSCoder) {
        fatalError("eerror")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        configureUI()
        
        print("user is \(user.username)")
    }
    
    //MARK: - Selectors
    
    @objc func handleCancel() {
        dismiss(animated:true, completion: nil)
    }
    
    @objc func handleUploadTweet() {
        print("DEBUG: Upload tweet here...")
    }
    
    //MARK: - API
    //MARK: - Helpers
     
    func configureUI() {
        view.backgroundColor = .white
        configureNavigationBar()
        
        view.addSubview(profileImageView)
        profileImageView.anchor(top:view.safeAreaLayoutGuide.topAnchor, left:view.leftAnchor,
        paddingTop: 16, paddingLeft: 16)
        
        profileImageView.sd_setImage(with: user.profileImageUrl, completed: nil)
    }
    
    func configureNavigationBar () {
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.isTranslucent = false

        navigationItem.leftBarButtonItem = UIBarButtonItem (barButtonSystemItem: .cancel, target: self, action: #selector(handleCancel))
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: actionButton)
    }
}
