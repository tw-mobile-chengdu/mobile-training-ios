//
//  ViewController.swift
//  demo_M05
//
//  Created by Xin Guo on 2019/11/8.
//  Copyright © 2019 personal.emagrorrim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var containerView: UIView!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var contentLabel: UILabel!
  @IBOutlet weak var imageContentView: UIView!

  var viewModel: ViewModel!

  override func viewDidLoad() {
    super.viewDidLoad()
    viewModel = ViewModel(updateView: {
      self.containerView.backgroundColor = .systemBlue
      self.doSomething()
    })
    viewModel.update()
  }

  func doSomething() {
  }
}

class ViewModel {
  let updateView: () -> Void

  init(updateView: @escaping () -> Void) {
    self.updateView = updateView
  }

  func update() {
    self.updateView()
  }
}

