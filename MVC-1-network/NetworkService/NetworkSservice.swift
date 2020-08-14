//
//  NetworkSservice.swift
//  MVC-1-network
//
//  Created by yurik on 8/14/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import Foundation

class NetworkSservice {
    private init(){}
    static let shared = NetworkSservice()
    
    public func getData(url: URL, completion: @escaping (Any) -> ()) {
        let session = URLSession.shared
        
        session.dataTask(with: url) { (data, response, error) in
            guard let data = data else {return}
            do{
                let json = try JSONSerialization.jsonObject(with: data, options: [])
            } catch {
                print(error)
            }
        }.resume()
    }
}
