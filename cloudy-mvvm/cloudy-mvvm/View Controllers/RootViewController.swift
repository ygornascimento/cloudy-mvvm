//
//  RootViewController.swift
//  cloudy-mvvm
//
//  Created by Ygor Nascimento on 25/04/21.
//

import UIKit

final class RootViewController: UIViewController {
    
    private let dayViewController = DayViewController()
    
    override func viewDidLoad() {
        setupLayout()
    }
    
    private func setupLayout() {
        let dayViewControllerHeight = UIScreen.main.bounds.height * 0.300
        
        addChild(dayViewController)
        view.addSubview(dayViewController.view)
        NSLayoutConstraint.activate([
            dayViewController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            dayViewController.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            dayViewController.view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            dayViewController.view.heightAnchor.constraint(equalToConstant: dayViewControllerHeight)
        ])
        didMove(toParent: self)
    }
}
