//
//  ContactsViewController.swift
//  UITableViewDemo
//
//  Created by Facheng Liang  on 2019/11/19.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {
  @IBOutlet weak var tableView: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()
    // set the dataSource to self
    tableView.dataSource = self
  }
}

extension ContactsViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    // Let the UITableView know about your data
    return contacts.count
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // Get back the cell using the reuseIdentifier
    // UITableView will create a new cell or reuse an existing cell
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath) as? ContactCell else {
      return UITableViewCell()
    }
    cell.configure(with: contacts[indexPath.row])

    // TODO: For exercise3
    // When I want to set backgroundColor to red for the odd lines, I use the follow 3 lines code, uncomment them and run the project, scrolling the contacts, what you have found? how to fix it?
    //    if indexPath.row % 2 == 0 {
    //      cell.contentView.backgroundColor = .red
    //    }

    return cell
  }
}

extension ContactsViewController: UITableViewDelegate {
  /* TODO: For exercise1
     when selected a cell, then present an alert controller with:
       title: name
       message: phone number
       action: Ok
  */
}
