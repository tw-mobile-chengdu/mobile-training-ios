//
//  ViewController.swift
//  demo_M01
//
//  Created by Xin Guo on 2019/11/6.
//  Copyright © 2019 org.emagrorrim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var helloLabel: UILabel!
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var helloButton: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func didTapSayHelloButton(_ sender: UIButton) {
    helloLabel.text = "Hello, \(nameTextField.text ?? "World")!"
  }
}

