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
//        self.navigationController?.popViewController(animated: true)
        // мы создали массив контроллеров, которые у нас могут быть (в данном случае два контроллера 0 и 1)
        // POP
        var currentControllerArray = self.navigationController?.viewControllers
        // удаляем последний контроллер
        currentControllerArray?.removeLast()
        guard let newController = currentControllerArray else {
            return
        }
        self.navigationController?.viewControllers = newController
        // мы создали массив контроллеров, выбили последний и текущий контроллер массивов мы внесли в массив и нью контроллер засунули в навигейшн контроллер
    }
    
    
}
