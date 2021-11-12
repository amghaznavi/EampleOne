//
//  TabBarController.swift
//  EampleOne
//
//  Created by Am GHAZNAVI on 08/11/2021.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configTabBarController()
    }

    
    
    
    func configTabBarController() {
        
        let myLoginVC = UINavigationController(rootViewController: MyLoginVC())
        let SearchVC = UINavigationController(rootViewController: SearchVC())
        let homeVC = UINavigationController(rootViewController: HomeVC())
        let wishlistVC = UINavigationController(rootViewController: WishlistVC())
        let myBagVC = UINavigationController(rootViewController: MyBagVC())
        
        myLoginVC.title = "MY LOGIN"
        SearchVC.title = "SEARCH"
        homeVC.title = "HOME"
        wishlistVC.title = "WISHLIST"
        myBagVC.title = "MY BAG"
        
        
        viewControllers = ([myLoginVC, SearchVC, homeVC, wishlistVC, myBagVC])
         
        guard let items = tabBar.items else {
            return
        }
        
        let images = ["person", "magnifyingglass","house","heart","bag"]
        
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }

      
    }
    
  
    
    
    
  
    
    
    class MyLoginVC: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .red
            title = "MY LOGIN"
        }
        
    }
    
    class SearchVC: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .green
            title = "SEARCH"
        }
        
    }
    
    class HomeVC: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .gray
            title = "HOME"
        }
        
    }
    
    class WishlistVC: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .purple
            title = "WISHLIST"
        }
        
    }
    
    class MyBagVC: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .blue
            title = "MY BAG"
        }
        
    }
    
    
    
    
    
    
    
    
    
    


}
