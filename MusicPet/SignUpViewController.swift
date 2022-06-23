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
        textField.translatesAutoresizingMaskIntoConstraints = false
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
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       

      
    }
    

   
}
