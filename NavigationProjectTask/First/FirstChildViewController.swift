//
//  FirstChildViewController.swift
//  NavigationProjectTask
//
//  Created by Анастасия on 20.07.2021.
//

import UIKit

class FirstChildViewController: UIViewController {
    
    
    // MARK: - Views
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Pop", for: .normal)
        button.addTarget(self, action: #selector(tapButtonAction), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        // navigationController?.navigationBar.prefersLargeTitles = true
        
        title = "FirstChild"
    }
    
    override func viewWillAppear(_ animated: Bool) { // контроллер проинициализирован
        super.viewWillAppear(animated)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // MARK: - Initial
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        
        setupHierarhy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Settings
    
    private func setupHierarhy() {
        view.addSubview(button)
    }
    
    private func setupLayout() {
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    // MARK: - Action
    
    @objc private func tapButtonAction() {
        
        navigationController?.popViewController(animated: true)
        
    }

}
