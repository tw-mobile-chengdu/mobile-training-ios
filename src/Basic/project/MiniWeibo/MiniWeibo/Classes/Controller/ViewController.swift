//
//  ViewController.swift
//  MiniWeibo
//
//  Created by Weicheng Wang on 2019/12/18.
//  Copyright © 2019 ThoughtWorks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: ViewModel = ViewModel(HttpRequest())
    var dataSource: [WeiboModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set delegate,
        // Q&A: Why delegate and dataSource uses weak?
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "WeiboTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "WeiboTableViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeiboTableViewCell", for: indexPath) as! WeiboTableViewCell
        let model = dataSource[indexPath.row]
        cell.set(model)
        return cell
    }
}
