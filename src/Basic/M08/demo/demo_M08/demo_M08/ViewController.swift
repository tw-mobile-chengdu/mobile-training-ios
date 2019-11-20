//
//  ViewController.swift
//  demo_M08
//
//  Created by Xin Guo on 2019/11/20.
//  Copyright © 2019 personal.emagrorrim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var displayLabel: UILabel!
  @IBOutlet weak var numberInputField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()
  }


  @IBAction func didTapSpellOutButton(_ sender: Any) {
    displayLabel.text = NumberNameSpeller.numberName(of: Int(numberInputField.text ?? "") ?? 0)
  }
}

