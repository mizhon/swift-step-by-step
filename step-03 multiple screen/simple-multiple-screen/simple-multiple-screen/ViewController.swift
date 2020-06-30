//
//  ViewController.swift
//  simple-multiple-screen
//
//  Created by zhongming on 2020/4/22.
//  Copyright © 2020 zhongming. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for subView in view.subviews {
            print(subView)
        }
    }
}

