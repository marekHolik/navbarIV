//
//  NavigationButton.swift
//  navbarIV
//
//  Created by marek holik on 30/06/2019.
//  Copyright © 2019 marek holik. All rights reserved.
//

import UIKit

class NavigationButton: UIButton {
    
    var controllerNC: ControllerNC!
    var controllerBehind: SlidingVC!

    func configure(controllerNC: ControllerNC, controllerBehind controller: SlidingVC) {
        self.controllerNC = controllerNC
        controllerBehind = controller
        self.addTarget(self, action: #selector(toggle), for: .touchUpInside)
    }
    
    @objc func toggle() {
        print("clicked")
        if (controllerNC.chosenVC == controllerBehind) {
            controllerBehind.slide()
        } else {
            if (controllerNC.chosenVC != nil) {
                controllerNC.popViewController(animated: false)
                print("\(controllerNC.chosenVC) is being dissmised")
            }
            controllerNC.pushViewController(controllerBehind, animated: true)
            controllerNC.chosenVC = controllerBehind
        }
    }
    
}
