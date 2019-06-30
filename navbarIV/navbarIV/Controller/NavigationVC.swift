//
//  NavigationVC.swift
//  navbarIV
//
//  Created by marek holik on 30/06/2019.
//  Copyright © 2019 marek holik. All rights reserved.
//

import UIKit

class NavigationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.6146146655, blue: 0.4929045439, alpha: 1)
    }
    
    func configureButtons(controllerNC: ControllerNC, viewControllers: [SlidingVC]) {
        var topMargin: CGFloat = 100
        for controller in viewControllers {
            let button = NavigationButton()
            button.configure(controllerNC: controllerNC, controllerBehind: controller)
            view.addSubview(button)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.topAnchor.constraint(equalTo: view.topAnchor, constant: topMargin).isActive = true
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            button.widthAnchor.constraint(equalToConstant: 200).isActive = true
            button.heightAnchor.constraint(equalToConstant: 60).isActive = true
            button.setTitle(controller.name, for: .normal)
            topMargin += 70
        }
        
    }

}
