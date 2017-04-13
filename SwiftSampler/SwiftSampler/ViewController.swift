//
//  ViewController.swift
//  SwiftSampler
//
//  Created by Rachel Schifano on 4/9/17.
//  Copyright © 2017 schifano. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let samples = ["Tap Counter", "TapOrHoldCounter"]
    let sampleDetails = ["You tap, it counts", "You tap or hold the button, it counts"]
    
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch(indexPath.row) {
        case 0:
            let storyBoard = UIStoryboard(name: "TapCounter", bundle:nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "tapCounter")
            self.navigationController?.pushViewController(vc, animated: true)
        case 1:
            let storyBoard = UIStoryboard(name: "TapOrHoldCounter", bundle:nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "tapOrHoldCounter")
            self.navigationController?.pushViewController(vc, animated: true)
        default:
            print("Cannot segue to selected indexPath.row")
        }
    }
}
