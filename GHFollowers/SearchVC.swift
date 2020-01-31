//
//  SearchVC.swift
//  GHFollowers
//
//  Created by shaimaa on 26/05/1441 AH.
//  Copyright © 1441 shaimaa. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {
    
    let logoImage = UIImageView()
    let usernameTextField = GFTextField()
    let callActionBtn = GFButton(backgroundColor: .systemGreen, title: "Get Followers")
    
    
    //viewDidLoad call in the first time we open the app
    override func viewDidLoad() {
        super.viewDidLoad()
        //systemBackground mean black with dark , white with light
        view.backgroundColor = .systemBackground
        
        configureLogoImage()
        configureTextField()
        ConfigureCallActionBtn()
    }
    // viewWillAppear  call evry time the view appear (if we back or open the app).
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func configureLogoImage(){
      //  view.addSubview(logoImage) ( like drag and drop in storyboard) .
        view.addSubview(logoImage)
        //stringly type
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.image = UIImage(named: "gh-logo")!
        //layout
        NSLayoutConstraint.activate([
        
            logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant:  80),
            logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImage.heightAnchor.constraint(equalToConstant: 200),
            logoImage.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func configureTextField(){
        view.addSubview(usernameTextField)
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 48),
           // leadingAnchor without -
            usernameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            //trailingAnchor most be use -
            usernameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            usernameTextField.heightAnchor.constraint(equalToConstant: 50)
        
        ])
        
    }
    
    
    func ConfigureCallActionBtn(){
        view.addSubview(callActionBtn)
        //safe area from bottom must be -
        NSLayoutConstraint.activate([
            callActionBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            callActionBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callActionBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callActionBtn.heightAnchor.constraint(equalToConstant: 50)
            
        
        
        ])
    }
}
