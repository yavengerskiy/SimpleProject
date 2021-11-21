//
//  DrugsTabBarController.swift
//  SimpleProject
//
//  Created by Beelab on 20/11/21.
//

import UIKit

class DrugsTabBarController: UITabBarController {
    var drugsList = Drug.getDrugsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let tabBarControllers = viewControllers else {return}
        
        for viewController in tabBarControllers {
            guard let viewController = viewController as? UINavigationController else {return}
            
            if let destController = viewController.topViewController as? SearchViewController {
                destController.drugsList = drugsList
            } else if let destController  = viewController.topViewController as? ListViewController {
                destController.drugsList = drugsList
            }
        }
    }
}


