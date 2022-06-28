//
//  DetailAlbumViewController.swift
//  MusicPet
//
//  Created by Oleg on 24.06.2022.
//

import UIKit

class DetailAlbumViewController: UIViewController {
    
    private let albumLogoView: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .red
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let albumNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Album name"
        label.tintColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let artistNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Artist name"
        label.tintColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let releseDataLabel: UILabel = {
        let label = UILabel()
        label.text = "Relese Date"
        label.tintColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}
