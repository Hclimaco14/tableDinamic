//
//  ViewCoding.swift
//  TableQuestions
//
//  Created by Hector Climaco on 13/03/20.
//  Copyright © 2020 Personal. All rights reserved.
//

import UIKit

class ViewCoding: UIViewController {
    
    let viewContent:UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.height - 20))
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    
    func configureView() {
        self.view.addSubview(viewContent)
        viewContent.frame = self.view.frame
        viewContent.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20).isActive = true
        viewContent.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        viewContent.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 20).isActive = true
        viewContent.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,constant: 20).isActive = true
        
        
    }

   

}
