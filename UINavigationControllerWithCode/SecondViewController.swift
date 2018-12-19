//
//  SecondViewController.swift
//  UINavigationControllerWithCode
//
//  Created by Артем on 12/19/18.
//  Copyright © 2018 Artem Karmaz. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        self.title = "SecondViewController"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        self.perform(#selector(goBack(param:)), with: nil, afterDelay: 2)
    }
    
    @objc func goBack(param: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
