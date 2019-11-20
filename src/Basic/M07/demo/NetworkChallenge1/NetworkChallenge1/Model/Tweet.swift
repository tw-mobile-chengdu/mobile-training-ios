//
//  Tweet.swift
//  NetworkChallenge1
//
//  Created by Zhiying Fan  on 2019/11/20.
//  Copyright © 2019 ThoughtWorks. All rights reserved.
//

import Foundation

struct Tweet: Codable {
  let sender: Author?
  let content: String?
}
