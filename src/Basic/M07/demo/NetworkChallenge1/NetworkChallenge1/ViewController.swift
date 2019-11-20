//
//  ViewController.swift
//  NetworkChallenge1
//
//  Created by Zhiying Fan  on 2019/11/20.
//  Copyright © 2019 ThoughtWorks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!

  let service = NetworkService()
  var tweets: [Tweet]?

  override func viewDidLoad() {
    super.viewDidLoad()

    service.getTweets { [weak self] (tweets, message) in
      guard let self = self, message.isEmpty else {
        print("Error: \(message)")
        return
      }
      self.tweets = tweets
      self.tableView.reloadData()
    }
  }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return tweets?.count ?? 0
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "ReuseId", for: indexPath)
    let tweet = tweets?[indexPath.row]
    if let sender = tweet?.sender {
      cell.textLabel?.text = sender.nick
    } else {
      cell.textLabel?.text = nil
    }
    if let content = tweet?.content {
      cell.detailTextLabel?.text = content
    } else {
      cell.detailTextLabel?.text = nil
    }
    return cell
  }
}
