//
//  RegisterViewController.swift
//  DesignApp
//
//  Created by Maksim Shershun on 3/30/19.
//  Copyright © 2019 Maksim Shershun. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var registerButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTextFields()
    }
    
    private func setupTextFields() {
        nameTextField.layer.cornerRadius = 4
        emailTextField.layer.cornerRadius = 4
        usernameTextField.layer.cornerRadius = 4
        passwordTextField.layer.cornerRadius = 4
        confirmPasswordTextField.layer.cornerRadius = 4
        registerButtonOutlet.layer.cornerRadius = 4
    }

    @IBAction func registerButton(_ sender: UIButton) {
        print("Register Button pressed")
    }
}
