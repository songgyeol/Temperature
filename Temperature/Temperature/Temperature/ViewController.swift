//
//  ViewController.swift
//  Temperature
//
//  Created by 송결 on 2022/01/22.
//

import UIKit

class ViewController: UIViewController {

    let mainLabel = UILabel()
    let mainButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    func setUI() {
        setBasic()
        setLayout()
        
    }
    func setBasic() {
        [mainLabel, mainButton].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.clipsToBounds = true
        }
        mainLabel.text = "No Info"
        mainLabel.textColor = .gray
        mainLabel.textAlignment = .center
        mainLabel.highlightedTextColor = .gray
        mainLabel.layer.borderColor = UIColor.gray.cgColor
        mainLabel.layer.borderWidth = 3
        mainLabel.layer.cornerRadius = 4
        
        mainButton.setTitle("Get Temperature", for: .normal)
        mainButton.setTitleColor(.blue, for: .normal)
        
    }
    func setLayout() {
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
//            mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 400),
//            mainLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 150),
//            mainLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -150),
//            mainLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
            mainLabel.heightAnchor.constraint(equalToConstant: 50),
            mainLabel.widthAnchor.constraint(equalToConstant: 100),
            
            mainButton.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 50),
            mainButton.widthAnchor.constraint(equalToConstant: 200),
            mainButton.heightAnchor.constraint(equalToConstant: 50),
            mainButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            mainButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//            mainButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100),
//            mainButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100)
            
            
        ])
    }
}
