//
//  GFTextField.swift
//  GHFollowers
//
//  Created by shaimaa on 01/06/1441 AH.
//  Copyright © 1441 shaimaa. All rights reserved.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
  
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius                   = 10
        layer.borderWidth                    = 2
        //with bordercolor we must use ccgColor
        layer.borderColor                    = UIColor.systemGray4.cgColor
        
        //.lable mean "black in light mood , whaite in dark mood.
        textColor                            = .label
        tintColor                            = .label
        textAlignment                        = .center
        font                                 = UIFont.preferredFont(forTextStyle: .title2)
        //adjustFont like AutoShrink in storyboard. but the minimum = 12 .
        adjustsFontSizeToFitWidth           = true
        minimumFontSize                     = 12
        //https://github.com/aaronbrethorst/SemanticUI
        backgroundColor                       = .tertiarySystemBackground
        //nessery :)
        autocorrectionType                    = .no
        placeholder                           = "Enter a username"
    }
}
