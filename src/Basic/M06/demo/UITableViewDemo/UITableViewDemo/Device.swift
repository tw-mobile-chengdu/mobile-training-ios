//
//  Device.swift
//  UITableViewDemo
//
//  Created by Facheng Liang  on 2019/11/16.
//  Copyright © 2019 Facheng Liang . All rights reserved.
//

import Foundation

enum Platform: String {
  case iOS = "iOS"
  case android = "Android"
}

struct Deveice {
  let name: String
  let system: String
  let isAvailable: Bool
}

struct DeviceList {
  let platform: Platform
  let devices: [Deveice]
}

let deviceList = [
  DeviceList(platform: .iOS, devices: iOSDevices),
  DeviceList(platform: .android, devices: androidDevices),
]

let iOSDevices = [
  Deveice(name: "iPhone Xs", system: "iOS 12.2", isAvailable: true),
  Deveice(name: "iPhone 8", system: "iOS 11.3", isAvailable: true),
  Deveice(name: "iPhone 7", system: "iOS 10.2", isAvailable: true),
  Deveice(name: "iPhone 11", system: "iOS 13.0", isAvailable: false),
  Deveice(name: "iPhone 11 Pro", system: "iOS 13.1", isAvailable: true),
  Deveice(name: "iPhone 11 Pro Max", system: "iOS 13.2", isAvailable: true),
  Deveice(name: "iPhone 6", system: "iOS 9.0", isAvailable: true),
  Deveice(name: "iPhone 6s", system: "iOS 9.1", isAvailable: false),
  Deveice(name: "iPhone 6s Plus", system: "iOS 9.2", isAvailable: true),
  Deveice(name: "iPad mini", system: "iOS 11.4", isAvailable: true),
  Deveice(name: "iPad Pro", system: "iOS 12.0", isAvailable: false),
]

let androidDevices = [
  Deveice(name: "Pixel 3", system: "Android 9", isAvailable: true),
  Deveice(name: "Galaxy S5", system: "Android 8", isAvailable: false),
  Deveice(name: "Galaxy Tab A", system: "Android 5", isAvailable: true),
  Deveice(name: "Pixel", system: "Android 7", isAvailable: true),
  Deveice(name: "HuaWei Mate30", system: "Android 10", isAvailable: true),
  Deveice(name: "Oppo Find7", system: "Android 9", isAvailable: false),
  Deveice(name: "Vivo X20", system: "Android 8", isAvailable: true),
]

