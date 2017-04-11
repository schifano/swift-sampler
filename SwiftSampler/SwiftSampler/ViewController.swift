//
//  ViewController.swift
//  SwiftSampler
//
//  Created by Rachel Schifano on 4/9/17.
//  Copyright © 2017 schifano. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let samples = ["Tap Counter"]
    let sampleDetails = ["You tap, it counts"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sampleCell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = samples[indexPath.row]
        cell.detailTextLabel?.text = sampleDetails[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return samples.count
    }
}
