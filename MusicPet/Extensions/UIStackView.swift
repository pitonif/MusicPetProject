//
//  File.swift
//  MusicPet
//
//  Created by Oleg on 22.06.2022.
//

import UIKit


extension UIStackView {
    convenience init(arrangedSubviews: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat, distribution: UIStackView.Distribution) {
        self.init(arrangedSubviews: arrangedSubviews)
                self.axis = axis
                self.spacing = spacing
                self.distribution = distribution
                self.translatesAutoresizingMaskIntoConstraints = false
        
    }
}
