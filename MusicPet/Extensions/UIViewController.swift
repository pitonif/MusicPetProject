//
//  UIViewController.swift
//  MusicPet
//
//  Created by Oleg on 24.06.2022.
//

import UIKit

extension UIViewController {
    
    func createCustomButton(selector: Selector) -> UIBarButtonItem {
        
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "person.png"), for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: selector, for: .touchUpInside)
        
        let menuBarItem = UIBarButtonItem(customView: button)
        return menuBarItem
    }
}
