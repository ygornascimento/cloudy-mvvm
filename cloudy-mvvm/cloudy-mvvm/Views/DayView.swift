//
//  DayView.swift
//  cloudy-mvvm
//
//  Created by Ygor Nascimento on 24/04/21.
//

import UIKit

final class DayView: UIView {
    
    private(set) var locationButton: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "button-location-normal")
        button.setImage(image, for: .normal)
        
        return button
    }()

    private(set) var settingsButton: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "button-settings-normal")
        button.setImage(image, for: .normal)
        
        return button
    }()

    private(set) var dateLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 20, weight: .heavy)
        label.text = "Sun, April 25"
        label.textAlignment = .center
        
        return label
    }()

    private(set) var timeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.text = "03:59 PM"
        label.textAlignment = .center
        
        return label
    }()

    private(set) var weatherImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "rain")
        
        return imageView
    }()

    private(set) var temperatureLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.text = "55.1 ºF"
        
        return label
    }()
    
    
    private(set) var windSpeedLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17, weight: .light)
        label.text = "11 MPH"
        
        return label
    }()
    
    private(set) var weatherDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15, weight: .light)
        label.textAlignment = .center
        label.text = "Possible Drizzle"
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        addSubview(locationButton)
        addSubview(settingsButton)
        addSubview(dateLabel)
        addSubview(timeLabel)
        addSubview(weatherImage)
        addSubview(temperatureLabel)
        addSubview(windSpeedLabel)
        addSubview(weatherDescriptionLabel)
        
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        settingsButton.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherImage.translatesAutoresizingMaskIntoConstraints = false
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        windSpeedLabel.translatesAutoresizingMaskIntoConstraints = false
        weatherDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            locationButton.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            locationButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            locationButton.widthAnchor.constraint(equalToConstant: 44),
            locationButton.heightAnchor.constraint(equalToConstant: 44),
            
            settingsButton.topAnchor.constraint(equalTo: locationButton.topAnchor),
            settingsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            settingsButton.widthAnchor.constraint(equalToConstant: 44),
            settingsButton.heightAnchor.constraint(equalToConstant: 44),
            
            dateLabel.topAnchor.constraint(equalTo: locationButton.topAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: locationButton.trailingAnchor, constant: 8),
            dateLabel.trailingAnchor.constraint(equalTo: settingsButton.leadingAnchor, constant: -8),
            
            timeLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor),
            timeLabel.leadingAnchor.constraint(equalTo: locationButton.trailingAnchor, constant: 8),
            timeLabel.trailingAnchor.constraint(equalTo: settingsButton.leadingAnchor, constant: -8),
            
            weatherImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            weatherImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            weatherImage.widthAnchor.constraint(equalToConstant: 60),
            weatherImage.heightAnchor.constraint(equalToConstant: 60),
            
            temperatureLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            temperatureLabel.centerYAnchor.constraint(equalTo: weatherImage.centerYAnchor),
            
            windSpeedLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            windSpeedLabel.centerYAnchor.constraint(equalTo: weatherImage.centerYAnchor),
            
            weatherDescriptionLabel.topAnchor.constraint(equalTo: weatherImage.bottomAnchor),
            weatherDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            weatherDescriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            weatherDescriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8)
            
        ])
    }
}
