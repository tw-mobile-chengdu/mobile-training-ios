//
//  ViewController.swift
//  MiniWeibo
//
//  Created by Weicheng Wang on 2019/12/18.
//  Copyright © 2019 ThoughtWorks. All rights reserved.
//

import UIKit

class WeiboListController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: WeiboListViewModel = WeiboListViewModel(HttpRequest())
    var dataSource: [WeiboModel] = []
    var selectedCellClosure : ((IndexPath) -> Void)?
    var selectedWeibo: WeiboModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // set delegate,
        // Q&A: Why delegate and dataSource uses weak?
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "WeiboTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "WeiboTableViewCell")
        self.selectedCellClosure = selectedCell
        setupViewModel()
    }
    
    private func setupViewModel() {
        viewModel.didUpdateWeibo = { [weak self] data in
            self?.dataSource = data
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
        viewModel.isRefreshing = { refreshing in
            DispatchQueue.main.async {
                UIApplication.shared.isNetworkActivityIndicatorVisible = refreshing
            }
        }
        
        viewModel.didSelecteWeibo = { [weak self] ip in
            DispatchQueue.main.async {
                let viewModel = WeiboDetailViewModel(ip)
                let vc = WeiboDetailController.instance(viewModel)
                self?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
    
    private func selectedCell(indexPath: IndexPath) {
        viewModel.didSelectRow(at: indexPath)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        viewModel.refreshData()
    }

}

extension WeiboListController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let selectedCellClosure = selectedCellClosure else {
            return
        }
        selectedCellClosure(indexPath)
    }
}

extension WeiboListController: UITableViewDataSource {
    
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
