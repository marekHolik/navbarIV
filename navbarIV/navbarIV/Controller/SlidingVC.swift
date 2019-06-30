//
//  SlidingVC.swift
//  navbarIV
//
//  Created by marek holik on 30/06/2019.
//  Copyright © 2019 marek holik. All rights reserved.
//

import UIKit

class SlidingVC: UIViewController {
    
    var button: UIButton!
    var name: String!
    var slidingConst: CGFloat!
    var controllerNC: ControllerNC!
    
    var delegate: ControllerNCDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        slidingConst = view.frame.size.width * 0.7
        configureButton()
    }
    
    func configure(name: String, controllerNC: ControllerNC) {
        self.name = name
        self.delegate = controllerNC
    }
    
    func configureButton() {
        button = UIButton()
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(slide), for: .touchUpInside)
    }

    @objc func slide() {
        delegate.dismissVC()
    }

}
