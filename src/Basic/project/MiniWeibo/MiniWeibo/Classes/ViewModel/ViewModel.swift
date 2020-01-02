//
//  ViewModel.swift
//  MiniWeibo
//
//  Created by Weicheng Wang on 2020/1/2.
//  Copyright © 2020 ThoughtWorks. All rights reserved.
//

import UIKit

class ViewModel {
    
    // Outputs
    var isRefreshing: ((Bool) -> Void)?
    var didSelecteWeibo: ((Int) -> Void)?
    var didUpdateWeibo:(([WeiboModel]) -> Void)?
    
    private(set) var dataSource: [WeiboModel] = [WeiboModel]() {
        didSet {
            didUpdateWeibo?(dataSource)
        }
    }
    
    // Inputs
    func ready() {
        isRefreshing?(true)
        service.request(with: "http://localhost:3000/home") { [weak self] data in
            guard let `self` = self else { return }
            self.isRefreshing?(false)
        }
    }
    
    func didSelectRow(at indexPath: IndexPath) {
        if dataSource.isEmpty { return }
        didSelecteWeibo?( dataSource[indexPath.row].id )
    }
    
    var service: HttpRequest
    
    init(_ service: HttpRequest = HttpRequest()) {
        self.service = service
    }
    
    // request finished
    private func finishRequest(with data: Data) {
        isRefreshing?(false)
        do {
            let decoder = JSONDecoder()
            let res = try decoder.decode(WeiboResponse.self, from: data)
            guard let models = res.data else { return }
            self.dataSource = models
        }catch let e {
            print(e.localizedDescription)
        }
    }

}
