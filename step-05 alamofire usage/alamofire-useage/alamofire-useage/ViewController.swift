//
//  ViewController.swift
//  alamofire-useage
//
//  Created by ming on 2020/6/28.
//  Copyright © 2020 ming. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Need to change the URL to a real API URL
        AF.request("http://localhost:3000/", method: .get).response {
            response in debugPrint(response)
        }
    }
}

