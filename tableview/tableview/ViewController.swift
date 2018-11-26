//
//  ViewController.swift
//  tableview
//
//  Created by Molida Loeung on 11/25/18.
//  Copyright © 2018 Molida Loeung. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let rv = ["irene","seulgi","wendy","joy","yeri"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rv.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.myImage.image = UIImage(named: rv[indexPath.row] + ".jpg")
        cell.myLabel.text = rv[indexPath.row]
        return cell
    }

}

