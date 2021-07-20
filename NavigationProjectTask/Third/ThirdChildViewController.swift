//
//  ThirdChildViewController.swift
//  NavigationProjectTask
//
//  Created by Анастасия on 20.07.2021.
//

import UIKit

class ThirdChildViewController: UIViewController {
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemOrange
        // navigationController?.navigationBar.prefersLargeTitles = true // без этого будет полоска 
        title = "ThirdChild" // == navigationItem.title = ...
    }
}
