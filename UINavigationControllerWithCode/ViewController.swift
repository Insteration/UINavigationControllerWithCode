//
//  ViewController.swift
//  UINavigationControllerWithCode
//
//  Created by Artem Karmaz on 12/19/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First ViewController"
        self.button.setTitle("Second VC", for: .normal)
        self.button = UIButton(type: .system)
        self.button.sizeToFit()
        self.button.center = self.view.center
        self.button.addTarget(self, action: #selector(perfmormDisplaySecondVC(param: )), for: .touchUpInside)
        self.button.addSubview(self.button)
    }

    @objc func perfmormDisplaySecondVC(param: Any) {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }

}

