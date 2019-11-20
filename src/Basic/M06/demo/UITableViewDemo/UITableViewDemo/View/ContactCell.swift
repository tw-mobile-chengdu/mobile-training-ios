//
//  ContactCell.swift
//  UITableViewDemo
//
//  Created by Facheng Liang  on 2019/11/19.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var phoneLabel: UILabel!

  func configure(with contact: Contact) {
    nameLabel.text = contact.name
    phoneLabel.text = contact.phone
  }
}
