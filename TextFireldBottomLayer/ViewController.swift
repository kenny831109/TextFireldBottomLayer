//
//  ViewController.swift
//  TextFireldBottomLayer
//
//  Created by 逸唐陳 on 2019/1/31.
//  Copyright © 2019 逸唐陳. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let textField: CustomTextField = {
        let view = CustomTextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "Password"
        view.isSecureTextEntry = true
        view.backgroundColor = .white
        view.setBottomBorder()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(textField)
        textField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        textField.widthAnchor.constraint(equalToConstant: 150).isActive = true
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
}

