//
//  ViewController.swift
//  RTRussiaParser
//
//  Created by Core on 08.10.17.
//  Copyright © 2017 Cornelius. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UITableView"

        tableView.delegate = self
        tableView.dataSource = self
        
        let nibName = UINib(nibName: "NewsCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "newsCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell") as! NewsCell
        cell.commonInit(title: "News Title", text: "News Text")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

