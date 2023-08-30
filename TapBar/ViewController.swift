//
//  ViewController.swift
//  TapBar
//
//  Created by Tony Chen on 10/4/2023.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var loginButton: UIButton = {
        var loginButton = UIButton()
        loginButton.configuration = .tinted()
        loginButton.configuration?.title = "Log in"
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return loginButton
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(loginButton)
        buttonLayout()
    }
    
    func buttonLayout() {
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            loginButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    @objc func didTapButton() {
        let tabBarVC = UITabBarController()
        let vc1 =  FirstViewController()
        let vc2 =  SecondViewController()
        let vc3 =  ThirdViewController()
        let vc4 =  FourthViewController()
        let vc5 =  FifthViewController()
        
        vc1.title = "Home"
        vc2.title = "Contact"
        vc3.title = "Help"
        vc4.title = "About"
        vc5.title = "Settings"
        
        tabBarVC.setViewControllers([vc1, vc2, vc3, vc4, vc5], animated: false)
        
        guard let items = tabBarVC.tabBar.items else {
            return
        }
        
        let images = ["house", "bell", "person.circle", "star", "gear"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBarVC.modalPresentationStyle = .fullScreen
        
        tabBarVC.tabBar.backgroundColor = .white
        
        present(tabBarVC, animated: true)
    }
    


}

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        
    }
}

class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
    }
}

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        
    }
}

class FourthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        
    }
}

class FifthViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
    }
}

