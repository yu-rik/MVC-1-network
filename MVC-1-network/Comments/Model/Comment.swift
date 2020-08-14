//
//  Comment.swift
//  MVC-1-network
//
//  Created by yurik on 8/14/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import Foundation

struct Comment {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
    
    //инициализатор который может вернуть nil
    init?(dict: [String : AnyObject]) {
        guard let postId = dict["postId"] as? Int,
        let id = dict["id"] as? Int,
        let name = dict["name"] as? String,
        let email = dict["email"] as? String,
        let body = dict["body"] as? String
        else {return nil}
        
        self.postId = postId
        self.id = id
        self.name = name
        self.email = email
        self.body = body        
    }
}
