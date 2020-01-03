//
//  QueryString.swift
//  MiniWeibo
//
//  Created by Weicheng Wang on 2019/12/25.
//  Copyright © 2019 ThoughtWorks. All rights reserved.
//

import UIKit

class HttpRequest {
    
    var query: String?
    
    typealias CompletionBlock = ((_ data: Data) -> Void)?
    
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
    
    init() {
        
    }
    
    func request(with urlString: String, parameters: [String: Any]? = nil, completion: CompletionBlock){
        
        var urlComponents = URLComponents(string: urlString)!
        urlComponents.queryItems = []
        
        if let parameters = parameters {
            for (key, value) in parameters{
                guard let value = value as? String else{return}
                urlComponents.queryItems?.append(URLQueryItem(name: key, value: value))
            }
            
        }
        
        guard let queryedURL = urlComponents.url else{return}
        
        let request = URLRequest(url: queryedURL)
        
        fetchedDataByDataTask(from: request, completion: completion)
    }
    
    
    private func fetchedDataByDataTask(from request: URLRequest, completion: CompletionBlock){
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil{
                print(error as Any)
            }else{
                guard let data = data, let completion = completion else{return}
                completion(data)
            }
        }
        task.resume()
    }
}
