//
//  DayViewController.swift
//  cloudy-mvvm
//
//  Created by Ygor Nascimento on 24/04/21.
//

import UIKit

final class DayViewController: UIViewController {
    
    private let dayView = DayView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        setupConstraints()
    }
    
    private func setupLayout() {
        view.addSubview(dayView)
        dayView.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            dayView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            dayView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            dayView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            dayView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
