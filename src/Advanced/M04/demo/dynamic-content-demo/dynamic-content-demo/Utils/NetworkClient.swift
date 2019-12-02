//
//  NetworkClient.swift
//  dynamic-content-demo
//
//  Created by Xin Guo on 2019/12/3.
//  Copyright © 2019 personal.emagrorrim. All rights reserved.
//

import Foundation
import Alamofire

struct NetworkClient {
  func request(url: URL, completion: @escaping ([String: Any]?, Error?) -> Void) {
    Alamofire.request(url).validate().responseJSON { dataResponse in
      switch dataResponse.result {
      case let .success(json):
        completion(json as? [String: Any], nil)
      case let .failure(error):
        completion(nil, error)
      }
    }
  }
}
