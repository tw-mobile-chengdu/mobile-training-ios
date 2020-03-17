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
    var viewModel: WeiboDetailViewModel?
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var avator: UIImageView!
    @IBOutlet weak var weiboContent: UILabel!
    
    // Q&A what different for static func and class func
    class func instance(_ viewModel: WeiboDetailViewModel) -> WeiboDetailController {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "WeiboDetailIdentifier") as! WeiboDetailController // why use force downcasting
        vc.viewModel = viewModel
        return vc
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        if let weibo = self.viewModel?.weibo {
            self.name.text = weibo.user?.name
            print(weibo.user?.name ?? "xxx")
            if let avatar = weibo.user?.avatar {
                let url = URL(string: "http://localhost:3000/" + avatar)!
                avator.load(from: url)
            } else {
                avator.backgroundColor = UIColor.gray
            }
            self.weiboContent.text = weibo.content
        }
    }
}
