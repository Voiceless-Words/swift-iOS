//
//  ViewController.swift
//  D02ex00
//
//  Created by Piet RAGOLANE on 2019/10/11.
//  Copyright © 2019 Piet RAGOLANE. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView! {
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.death.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "first")
        cell?.textLabel?.text = Data.death[indexPath.row].0
        cell?.detailTextLabel?.text = Data.death[indexPath.row].1
        
        return cell!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

