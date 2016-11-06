//
//  ViewController.swift
//  WormTabStrip
//
//  Created by Ezimet Yusuf on 11/6/16.
//  Copyright © 2016 EzimetYusup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let table:UITableView = UITableView(frame: self.view.frame)
        //table.backgroundColor = UIColor.redColor()
        table.backgroundColor = .clearColor()
        self.view.addSubview(table)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

