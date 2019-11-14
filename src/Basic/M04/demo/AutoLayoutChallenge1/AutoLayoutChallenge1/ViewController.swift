//
//  ViewController.swift
//  AutoLayoutChallenge1
//
//  Created by Zhiying Fan  on 2019/11/14.
//  Copyright © 2019 ThoughtWorks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var redView: UIView!
  @IBOutlet weak var redViewWidth: NSLayoutConstraint!

  var timer: Timer!

  override func viewDidLoad() {
    super.viewDidLoad()

    timer = Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(animation), userInfo: nil, repeats: true)
  }

  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    timer.invalidate()
  }

  @objc func animation() {
    if redViewWidth.constant >= 160 {
      redViewWidth.constant = 80
    } else {
      redViewWidth.constant = 160
    }

    UIView.animate(withDuration: 0.8) { [weak self] in
      self?.view.layoutIfNeeded()
    }
  }
}

