//
//  dataSource.swift
//  DataSource
//
//  Created by Huy on 7/20/20.
//  Copyright © 2020 nhn. All rights reserved.
//

import UIKit

class ListNumDataSoure: NSObject, UITableViewDataSource {

    weak var tableView: UITableView?
    var array: [Int] = []

    init(with tableView: UITableView) {
        self.tableView = tableView
    }
    
    public func updateData(array: [Int]) {
        self.array = array
        self.tableView?.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(array[indexPath.row])

        return cell
    }
}
