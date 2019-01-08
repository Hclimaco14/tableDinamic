//
//  QuestionSectionView.swift
//  TableQuestions
//
//  Created by Hector Climaco on 1/6/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

class QuestionSectionView: UITableViewHeaderFooterView {
    
    @IBOutlet weak var lblQuestion: UILabel!
    
    override func awakeFromNib() {
        self.lblQuestion.numberOfLines = 0
    }


}
