//
//  MyTableViewController.swift
//  SampleDelegate
//
//  Created by sakiyamaK on 2020/03/20.
//  Copyright © 2020 sakiyamaK. All rights reserved.
//

import UIKit

class MyTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            //両方protocol
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
}

extension MyTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("select cell \(indexPath)")
    }
}

extension MyTableViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = indexPath.row.description
        return cell
    }
}

