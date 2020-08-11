//
//  ViewController.swift
//  DataSource
//
//  Created by Huy on 7/20/20.
//  Copyright © 2020 nhn. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    var array = [1,2,3,4,5,6,7,8,9]
    var dataSoure:ListNumDataSoure?
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSoure = ListNumDataSoure(with: tableView)
        dataSoure?.updateData(array: array)
        tableView.dataSource = dataSoure
    }
    
    @IBAction func changeTestData(_ sender: Any) {
        array.append(array[array.count-1]+1)
        dataSoure?.updateData(array: self.array)
    }
}
