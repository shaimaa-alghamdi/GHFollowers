//
//  GFButton.swift
//  GHFollowers
//
//  Created by shaimaa on 29/05/1441 AH.
//  Copyright © 1441 shaimaa. All rights reserved.
//

import UIKit

class GFButton: UIButton {

    //Frame becouse it's Button with constrains
    override init(frame: CGRect) {
        
        //mean inherits the parents's features -> UIButton
        super.init(frame: frame)
       
        configure()
    }
    //this init becouse we don't use storyBoard.
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //create custom init for pass title & backgroundcolor .
    init(backgroundColor : UIColor, title: String){
        //.zero NOT frame
        super.init(frame: .zero)
        //self mean this GFButton.
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure(){
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
}
