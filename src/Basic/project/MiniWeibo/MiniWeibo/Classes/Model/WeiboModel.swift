//
//  WeiboModel.swift
//  MiniWeibo
//
//  Created by Weicheng Wang on 2019/12/31.
//  Copyright © 2019 ThoughtWorks. All rights reserved.
//

import UIKit

struct UserModel: Decodable {
    var id: Int = 0
    var nickname: String?
    var name: String?
    var avatar: String?
}

struct WeiboModel: Decodable {
    var created_at: String?
    var id: Int = 0
    var content: String?
    var reposts_count: Int = 0
    var is_vip: Bool = false
    var comments_count: Int = 0
    var tags: [String]?
    var follow_count: Int = 0
    var is_followed: Bool = false
    var imgs: [String]?
    var user: UserModel?
}

struct WeiboResponse: Decodable {
    var error_code: Int = 0
    var msg: String?
    var data: [WeiboModel]?
}
