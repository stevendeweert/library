//
//  RootViewController.swift
//  iOS
//
//  Created by Steven De Weert on 08/09/2025.
//

import UIKit

class RootViewController: UITabBarController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBackground
        
        // ??? If you set the backroundColor to something noticable (e.g. systemBlue) the color flashes through only when the ViewController in the UITab is wrapped in a UINavigationController ???
        
        tabs = [
            UITab(title: "Home", image: UIImage(systemName: "house"), identifier: "home") { _ in
                ViewController()
            },
            UITab(title: "Colleagues", image: UIImage(systemName: "person.2"), identifier: "colleagues") { _ in
                UINavigationController(rootViewController: ViewController())
            },
            UITab(title: "Settings", image: UIImage(systemName: "gear"), identifier: "settings") { _ in
                ViewController()
            }
        ]
        
        mode = .tabSidebar
        
    }
    
}
