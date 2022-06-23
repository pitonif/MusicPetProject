//
//  SignUpViewController.swift
//  MusicPet
//
//  Created by Oleg on 22.06.2022.
//

import UIKit

class SignUpViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    private let backgroundView: UIView = {
        let backView = UIView()
        backView.backgroundColor = .white
        backView.translatesAutoresizingMaskIntoConstraints = false
        return backView
    }()
    
    private let regLabel: UILabel = {
        let label = UILabel()
        label.text = "Registration"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let firstNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 10)
        label.text = "First name"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let firstNameTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter first name"
        return textField
    }()
    
    private let secondNameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 10)
        label.text = "Second name"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let secondNameTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter second name"
        return textField
    }()
    
    private let ageLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Age"
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Phone number"
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter phone number"
        textField.keyboardType = .numberPad
        return textField
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "E-mail"
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let emailTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter e-mail"
        return textField
    }()
    
    private let passwordLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Passowrd"
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.placeholder = "Create a password"
        textField.isSecureTextEntry = true
        return textField
    }()
    
    private let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = .black
        button.tintColor = .white
        button.setTitle("SignUp", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var elementStackView = UIStackView()
    let datePicker = UIDatePicker()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupDelegate()
    }
    
    
    private func setupViews() {
        title = "SignUp"
        
        view.addSubview(scrollView)
        scrollView.addSubview(backgroundView)
       
        
        elementStackView = UIStackView(arrangedSubviews: [firstNameLabel,
                                                         firstNameTextField,
                                                         secondNameLabel,
                                                         secondNameTextField,
                                                         ageLabel,
                                                         datePicker,
                                                         phoneNumberLabel,
                                                         phoneNumberTextField,
                                                         passwordLabel,
                                                         passwordTextField],
                                       axis: .vertical,
                                       spacing: 15,
                                       distribution: .fillProportionally)
        
        backgroundView.addSubview(regLabel)
        backgroundView.addSubview(signUpButton)
        backgroundView.addSubview(elementStackView)
    }

    private func setupDelegate() {
        firstNameTextField.delegate = self
        secondNameTextField.delegate = self
        phoneNumberTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    private func setupDatePicker() {
        datePicker.datePickerMode = .date
        datePicker.backgroundColor = .white
        datePicker.layer.borderColor = #colorLiteral(red: 0.8810099265, green: 0.8810099265, blue: 0.8810099265, alpha: 1)
        datePicker.layer.borderWidth = 1
        datePicker.clipsToBounds = true
        datePicker.layer.cornerRadius = 5
        datePicker.tintColor = .black
    }
    
    @objc private func signUpButtonTapped() {
        print("tapp")
    }
}

//MARK: - UITextFieldDelegate

extension SignUpViewController: UITextFieldDelegate {
    
}
