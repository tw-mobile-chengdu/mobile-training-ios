//
//  QueryString.swift
//  MiniWeibo
//
//  Created by Weicheng Wang on 2019/12/25.
//  Copyright © 2019 ThoughtWorks. All rights reserved.
//

import UIKit

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



class HttpRequest {
    
    var query: String?
    

    init?(_ query: String?) throws {
        if query == nil {
            throw AppError.normal
        }
        self.query = query
    }
    
    var count: Int {
        get {
            let pairs = query?.split(separator: "&")
            return pairs?.count ?? 0
        }
    }
    
    func valueFor(_ name: String) throws -> String? {
        let pairs = query?.split(separator: "&") ?? []
        
        let result = pairs
            .map{ $0.split(separator: "=") }
            .filter{ String($0.first ?? "") == name }
            .map{ $0.last }
        
        guard let value = result.first, let val = value else { throw AppError.normal }
        return String(val)
    }
}
