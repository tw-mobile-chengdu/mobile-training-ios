//
//  WeiboDetailViewModel.swift
//  MiniWeibo
//
//  Created by Zhen Tang  on 2020/3/17.
//  Copyright © 2020 ThoughtWorks. All rights reserved.
//

import Foundation

class WeiboDetailViewModel {
    var service: HttpRequest
    
    var isRefreshing: ((Bool) -> Void)?
    var didUpdateWeibo:((WeiboDetailModel) -> Void)?
    
    private(set) var data: WeiboDetailModel = WeiboDetailModel() {
        didSet {
            didUpdateWeibo?(data)
        }
    }
    
    init(_ service: HttpRequest = HttpRequest()) {
        self.service = service
    }
    
    func fetchData(id: String) {
        isRefreshing?(true)
        service.request(with: "http://localhost:3000/home") { [weak self] data in
            guard let `self` = self else { return }
            self.finishRequest(with: data)
        }
    }
    
    // request finished
    private func finishRequest(with data: Data) {
        isRefreshing?(false)
        do {
            let decoder = JSONDecoder()
            let res = try decoder.decode(WeiboDetailResponse.self, from: data)
            guard let models = res.data else { return }
            self.data = models
        }catch let e {
            print(e.localizedDescription)
        }
    }
}
