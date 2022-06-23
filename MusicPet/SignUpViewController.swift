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
        label.font = UIFont.systemFont(ofSize: 13)
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
        label.font = UIFont.systemFont(ofSize: 13)
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
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let phoneNumberLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Phone number"
        label.font = UIFont.systemFont(ofSize: 13)
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
        label.font = UIFont.systemFont(ofSize: 13)
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
        label.font = UIFont.systemFont(ofSize: 13)
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
        setupConstraints()
        setupDatePicker()
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
                                       spacing: 13,
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
        datePicker.layer.cornerRadius = 10
        datePicker.tintColor = .black
    }
    
    @objc private func signUpButtonTapped() {
        print("tapp")
    }
}

//MARK: - UITextFieldDelegate

extension SignUpViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            
            return false
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        firstNameTextField.becomeFirstResponder()
        secondNameTextField.becomeFirstResponder()
        emailTextField.becomeFirstResponder()
        passwordTextField.becomeFirstResponder()
        return true
    }
}

//MARK: - SetConstraints

extension SignUpViewController {
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            backgroundView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            backgroundView.centerYAnchor.constraint(equalTo: scrollView.centerYAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor),
            backgroundView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        NSLayoutConstraint.activate([
            elementStackView.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            elementStackView.centerYAnchor.constraint(equalTo: backgroundView.centerYAnchor),
            elementStackView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor, constant: -20),
            elementStackView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            regLabel.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            regLabel.bottomAnchor.constraint(equalTo: elementStackView.topAnchor, constant: -40)
        ])
    
        NSLayoutConstraint.activate([
            signUpButton.centerXAnchor.constraint(equalTo: backgroundView.centerXAnchor),
            signUpButton.topAnchor.constraint(equalTo: elementStackView.bottomAnchor, constant: 20),
            signUpButton.heightAnchor.constraint(equalToConstant: 40),
            signUpButton.widthAnchor.constraint(equalToConstant: 300)
        ])
    }
}
