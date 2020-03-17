//
//  WeiboDetailModel.swift
//  MiniWeibo
//
//  Created by Zhen Tang  on 2020/3/17.
//  Copyright © 2020 ThoughtWorks. All rights reserved.
//

import Foundation

class WeiboDetailModel: Decodable {
    
}

struct WeiboDetailResponse: Decodable {
    var error_code: Int = 0
    var msg: String?
    var data: WeiboDetailModel?
}
