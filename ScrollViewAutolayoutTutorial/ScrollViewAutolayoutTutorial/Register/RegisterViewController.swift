//
//  RegisterViewController.swift
//  ScrollViewAutolayoutTutorial
//
//  Created by Vinícius Bonemer on 21/09/2018.
//  Copyright © 2018 Vinícius Bonemer. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    // MARK: - Properties
    
    let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.isDirectionalLockEnabled = true
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var logoImageView: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "logo")
        logo.contentMode = .scaleAspectFill
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    let nameLabel: UILabel = {
        let lbl = Label(text: "Nome:")
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let nameTextField: UITextField = {
        let tf = TextField(placeholder: "Nome")
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let emailLabel: UILabel = {
        let lbl = Label(text: "Email:")
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let emailTextField: UITextField = {
        let tf = TextField(placeholder: "Email")
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let passwordLabel: UILabel = {
        let lbl = Label(text: "Senha:")
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let passwordTextField: UITextField = {
        let tf = TextField(placeholder: "Senha")
        tf.isSecureTextEntry = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let passwordConfirmationLabel: UILabel = {
        let lbl = Label(text: "Confirmar senha:")
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let passwordConfirmationTextField: UITextField = {
        let tf = TextField(placeholder: "Confirmar senha")
        tf.isSecureTextEntry = true
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    let registerButton: UIButton = {
        let btn = Button(title: "Registrar")
        btn.type = .rectangle
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    let hasAccountLabel: UILabel = {
        let lbl = Label(text: "Já possui uma conta?")
        lbl.textAlignment = .center
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let goToLoginButton: UIButton = {
        let btn = Button(title: "Fazer Login")
        btn.type = .text
        btn.contentEdgeInsets = UIEdgeInsets(top: 2, left: 10, bottom: 2, right: 10)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    // MARK: - Methods
    
    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setUpSubviews()
        
        setUpScrollViewConstraints()
        setUpContentViewConstraints()
        setUpLogoImageViewConstraints()
        setUpNameLabelConstraints()
        setUpNameTextFieldConstraints()
        setUpEmailLabelConstraints()
        setUpEmailTextFieldConstraints()
        setUpPasswordLabelConstraints()
        setUpPasswordTextFieldConstraints()
        setUpPasswordConfirmationLabelConstraints()
        setUpPasswordConfirmationTextFieldConstraints()
        setUpRegisterButtonConstraints()
        setUpHasAccountLabelConstraints()
        setUpGoToLoginButtonConstraints()
    }
    
    // MARK: Set Up
    
    fileprivate func setUpSubviews() {
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(logoImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(nameTextField)
        contentView.addSubview(emailLabel)
        contentView.addSubview(emailTextField)
        contentView.addSubview(passwordLabel)
        contentView.addSubview(passwordTextField)
        contentView.addSubview(passwordConfirmationLabel)
        contentView.addSubview(passwordConfirmationTextField)
        contentView.addSubview(registerButton)
        contentView.addSubview(hasAccountLabel)
        contentView.addSubview(goToLoginButton)
    }
    
    fileprivate func setUpScrollViewConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor)
            ])
    }
    
    fileprivate func setUpContentViewConstraints() {
        NSLayoutConstraint.activate([
            contentView.widthAnchor.constraint(equalTo: view.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor)
            ])
    }
    
    fileprivate func setUpLogoImageViewConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 60),
            logoImageView.widthAnchor.constraint(equalTo: logoImageView.heightAnchor)
            ])
        logoImageView.layer.cornerRadius = logoImageView.frame.size.height / 2
    }
    
    fileprivate func setUpNameLabelConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            nameLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 45),
            nameLabel.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    fileprivate func setUpNameTextFieldConstraints() {
        NSLayoutConstraint.activate([
            nameTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            nameTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor),
            nameTextField.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    fileprivate func setUpEmailLabelConstraints() {
        NSLayoutConstraint.activate([
            emailLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            emailLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            emailLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 10),
            emailLabel.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    fileprivate func setUpEmailTextFieldConstraints() {
        NSLayoutConstraint.activate([
            emailTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            emailTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            emailTextField.topAnchor.constraint(equalTo: emailLabel.bottomAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    fileprivate func setUpPasswordLabelConstraints() {
        NSLayoutConstraint.activate([
            passwordLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            passwordLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            passwordLabel.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            passwordLabel.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    fileprivate func setUpPasswordTextFieldConstraints() {
        NSLayoutConstraint.activate([
            passwordTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            passwordTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    fileprivate func setUpPasswordConfirmationLabelConstraints() {
        NSLayoutConstraint.activate([
            passwordConfirmationLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            passwordConfirmationLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            passwordConfirmationLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            passwordConfirmationLabel.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    fileprivate func setUpPasswordConfirmationTextFieldConstraints() {
        NSLayoutConstraint.activate([
            passwordConfirmationTextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            passwordConfirmationTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            passwordConfirmationTextField.topAnchor.constraint(equalTo: passwordConfirmationLabel.bottomAnchor),
            passwordConfirmationTextField.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    fileprivate func setUpRegisterButtonConstraints() {
        NSLayoutConstraint.activate([
            registerButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            registerButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 102),
            registerButton.topAnchor.constraint(equalTo: passwordConfirmationTextField.bottomAnchor, constant: 60),
            registerButton.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    fileprivate func setUpHasAccountLabelConstraints() {
        NSLayoutConstraint.activate([
            hasAccountLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            hasAccountLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 60),
            hasAccountLabel.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 10),
            hasAccountLabel.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    fileprivate func setUpGoToLoginButtonConstraints() {
        NSLayoutConstraint.activate([
            goToLoginButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            goToLoginButton.leadingAnchor.constraint(lessThanOrEqualTo: contentView.leadingAnchor, constant: 102),
            goToLoginButton.topAnchor.constraint(equalTo: hasAccountLabel.bottomAnchor, constant: 10),
            goToLoginButton.heightAnchor.constraint(equalToConstant: 45),
            goToLoginButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -60)
            ])
    }
}
