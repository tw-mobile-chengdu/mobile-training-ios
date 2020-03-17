//
//  WeiboDetailController.swift
//  MiniWeibo
//
//  Created by Zhen Tang  on 2020/3/17.
//  Copyright © 2020 ThoughtWorks. All rights reserved.
//

import UIKit
import Foundation

class WeiboDetailController: UIViewController {
    var viewModel: WeiboDetailViewModel = WeiboDetailViewModel(HttpRequest())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewModel()
    }
    
    private func setupViewModel() {
        viewModel.isRefreshing = { refreshing in
            DispatchQueue.main.async {
                UIApplication.shared.isNetworkActivityIndicatorVisible = refreshing
            }
        }
    }
}
