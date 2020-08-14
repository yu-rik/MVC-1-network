//
//  CommentNetworkService.swift
//  MVC-1-network
//
//  Created by yurik on 8/14/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import Foundation
class CommentNetworkService {
    private init() {}
    
    static func getComments(completion: @escaping(GetCommentResponse) -> ()) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1/comments") else { return }
        
        NetworkSservice.shared.getData(url: url) { (json) in
            do {
                let response = try GetCommentResponse(json: json)
                completion(response)
            } catch {
                print(error)
            }
        }
    }
}
