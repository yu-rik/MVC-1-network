//
//  ViewController.swift
//  MVC-1-network
//
//  Created by yurik on 8/13/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! 

//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//       // tableView.delegate = (self as! UITableViewDelegate)
//       // tableView.dataSource = self as? UITableViewDataSource
//    }
    
    
}


extension CommentsViewController: UITableViewDelegate{
    
}

extension CommentsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}

