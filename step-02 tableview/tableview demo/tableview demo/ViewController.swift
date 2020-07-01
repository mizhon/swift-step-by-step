//
//  ViewController.swift
//  tableview demo
//
//  Created by zhongming on 2020/4/22.
//  Copyright © 2020 zhongming. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var sectionNums = 3
    var dailyTasks = ["Check all windows",
//                      "Check all doors",
//                      "Is the boiler fueled?",
//                      "Check the mailbox",
//                      "Empty trash containers",
                      "If freezing, check water pipes",
                      "Document \"strange and unusual\" occurrences"]
    
    var weeklyTasks = ["Check inside all cabins",
                       "Flush all lavatories in cabins",
                       "Walk the perimeter of property"]
    
    var monthlyTasks = ["Test security alarm",
                        "Test motion detectors",
                        "Test smoke alarms"]
    
    // Table View Delegate Methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Select row \(indexPath.row) in section \(indexPath.section)")
    }
    
    // Table View Data Source Methods
    func numberOfSections(in tableView: UITableView) -> Int {
        return sectionNums
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return monthlyTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cell = UITableViewCell() // 注释普通UITableViewCell，改用dequeueReusableCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = dailyTasks[indexPath.row]
            cell.imageView?.image = UIImage(named: "icon-mark")
            cell.accessoryType = .disclosureIndicator
            cell.detailTextLabel?.text = "this is a detail info for \(indexPath.row)"
        case 1:
            cell.textLabel?.text = weeklyTasks[indexPath.row]
            cell.imageView?.image = UIImage(named: "icon-ring")
            cell.accessoryType = .detailButton
            cell.detailTextLabel?.text = nil
        case 2:
            cell.textLabel?.text = monthlyTasks[indexPath.row]
            cell.imageView?.image = UIImage(named: "icon-calendar")
            cell.accessoryType = .checkmark
            cell.detailTextLabel?.text = "🐶"
        default:
            cell.textLabel?.text = nil
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return nil
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("Delete section: \(indexPath.section)")
        }
        
        switch indexPath.section {
        case 0:
            dailyTasks.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .automatic)
            tableView.endUpdates()
        case 1:
            weeklyTasks.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        case 2:
            monthlyTasks.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .none)
            tableView.endUpdates()
        default:
            return
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

