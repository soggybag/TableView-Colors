//
//  ViewController.swift
//  TableView-Colors
//
//  Created by mitchell hudson on 12/9/15.
//  Copyright © 2015 mitchell hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var array = [Int]()
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")!
        
        cell.textLabel?.text = "\(array[indexPath.row])"
        
        // You can uncomment the blocks below to text different ways of coloring tableview cells. 
        
        /*
        // Color cells by changing hue
        let hue = 1 / CGFloat(array.count) * CGFloat(indexPath.row)
        cell.backgroundColor = UIColor(hue: hue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        */
        
        /*
        // Or, set the brightness. Here the min value is 0.55 and max value is 1.0 (0.45 + 0.55)
        let b = 0.45 / CGFloat(array.count) * CGFloat(indexPath.row) + 0.55
        cell.backgroundColor = UIColor(hue: 0.5, saturation: 1.0, brightness: b, alpha: 1.0)
        */
        
        
        // You could use this to color every other cell 
        // Use % 2 to find each odd numbered cell
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor(hue: 0.43, saturation: 1.0, brightness: 0.75, alpha: 1.0)
        } else {
            cell.backgroundColor = UIColor(hue: 0.43, saturation: 1.0, brightness: 0.85, alpha: 1.0)
        }
        
        return cell
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...40 {
            array.append(i)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

