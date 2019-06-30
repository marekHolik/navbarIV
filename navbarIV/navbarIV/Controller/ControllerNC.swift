//
//  ControllerNC.swift
//  navbarIV
//
//  Created by marek holik on 30/06/2019.
//  Copyright © 2019 marek holik. All rights reserved.
//

import UIKit

class ControllerNC: UINavigationController, ControllerNCDelegate {
    
    var chosenVC: SlidingVC!
    
    var button: UIButton!
    var slidingVC: SlidingVC!
    var secondSlidingVC: SlidingVC!
    
    var navigationVC: NavigationVC!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isHidden = true
        view.backgroundColor = #colorLiteral(red: 0.4, green: 0.8156862745, blue: 0.431372549, alpha: 1)
        configureSlidingVC()
        configureSecondSlidingVC()
        configureNavigationVC()
    }
    
    private func configureSlidingVC() {
        slidingVC = SlidingVC()
        slidingVC.configure(name: "firstVC", controllerNC: self)
    }
    
    private func configureSecondSlidingVC() {
        secondSlidingVC = SlidingVC()
        secondSlidingVC.view.backgroundColor = #colorLiteral(red: 0, green: 0.5969511867, blue: 1, alpha: 1)
        secondSlidingVC.configure(name: "secondVC", controllerNC: self)
    }
    
    private func configureNavigationVC() {
        navigationVC = NavigationVC()
        navigationVC.configureButtons(controllerNC: self, viewControllers: [slidingVC, secondSlidingVC])
        pushViewController(navigationVC, animated: true)
    }
    
    @objc func slideSlidingVC() {
        pushViewController(slidingVC, animated: true)
    }
    
    func slideVC(controller: SlidingVC) {
        pushViewController(controller, animated: true)
    }
    
    func dismissVC() {
        popViewController(animated: true)
    }

}

