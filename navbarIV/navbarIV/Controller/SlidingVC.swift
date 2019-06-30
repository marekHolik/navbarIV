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
    var slided: Bool!
    var slidingConst: CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        slided = false
        slidingConst = view.frame.size.width * 0.7
        configureButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Appearing")
    }
    
    func configure(name: String) {
        self.name = name
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
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.view.frame.origin.x = self.view.frame.origin.x + (self.slided ? -self.slidingConst : self.slidingConst)
        }, completion: nil)
        slided = !slided
    }

}
