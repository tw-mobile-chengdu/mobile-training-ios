//
//  NetworkService.swift
//  NetworkChallenge1
//
//  Created by Zhiying Fan  on 2019/11/20.
//  Copyright © 2019 ThoughtWorks. All rights reserved.
//

import Foundation

class NetworkService {

  var dataTask: URLSessionDataTask?

  typealias QueryResult = ([Tweet]?, String) -> ()

  func getTweets(completion: @escaping QueryResult) {
    guard let url = URL(string: "https://thoughtworks-mobile-2018.herokuapp.com/user/jsmith/tweets") else { return }
    dataTask = URLSession.shared.dataTask(with: url) { (data, response, error) in
      if let error = error {
        completion(nil, error.localizedDescription)
      } else if let data = data {
        do {
          let tweets = try JSONDecoder().decode([Tweet].self, from: data)
          DispatchQueue.main.async {
            completion(tweets, "")
          }
        } catch {          
          completion(nil, error.localizedDescription)
        }
      } else {
        completion(nil, "Unknown error")
      }
    }
    dataTask?.resume()
  }
}
