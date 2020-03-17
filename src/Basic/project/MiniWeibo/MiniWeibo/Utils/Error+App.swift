//
//  Error+App.swift
//  MiniWeibo
//
//  Created by Weicheng Wang on 2020/1/3.
//  Copyright © 2020 ThoughtWorks. All rights reserved.
//

import Foundation

enum AppError: Error {
    
    case normal
    
    func info(_ info: String) -> AppError {
        switch info {
        case "normal":
            return .normal
        default:
            return .normal
        }
    }
}

extension AppError: LocalizedError {
    var localizedDescription: String {
        return "App Error."
    }
}
