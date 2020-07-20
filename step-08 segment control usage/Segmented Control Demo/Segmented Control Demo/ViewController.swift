//
//  ViewController.swift
//  Segmented Control Demo
//
//  Created by zhongming on 2020/7/20.
//  Copyright © 2020 zdesign. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let items = ["Black", "Red", "Pulple"]
    
    lazy var segment: UISegmentedControl = {
        let ctl = UISegmentedControl(items: items)
        ctl.translatesAutoresizingMaskIntoConstraints = false
        // 设置被选中的segment index
        ctl.selectedSegmentIndex = 0
        ctl.layer.cornerRadius = 8
        ctl.layer.borderWidth = 1
        ctl.layer.borderColor = UIColor.white.cgColor
//        ctl.layer.masksToBounds = true
      
        ctl.tintColor = UIColor.white
        ctl.addTarget(self, action: #selector(handleSegmentChanged(_ :)), for: .valueChanged)
        
        return ctl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupViews()
    }
    
    @objc func handleSegmentChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            view.backgroundColor = .white
        case 1:
            view.backgroundColor = .red
        case 2:
            view.backgroundColor = .purple
        default:
            view.backgroundColor = .black
        }
    }
    
    fileprivate func setupViews() {
        view.backgroundColor = .white
        view.addSubview(segment)
        
        segment.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        // segment.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        segment.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        segment.widthAnchor.constraint(equalToConstant: 300).isActive = true
        segment.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }

}

