//
//  CommentCell.swift
//  MVC-1-network
//
//  Created by yurik on 8/14/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

    @IBOutlet weak var labelInCell: UILabel!
    @IBOutlet weak var textViewInCell: UITextView!
    
    //метод для заполнения ячейки
    func configure(with comment: Comment) {
        self.labelInCell.text = comment.name
        self.textViewInCell.text = comment.body
    }
}
