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
        label.numberOfLines = 0
        label.text = "Album name"
        label.font = UIFont.systemFont(ofSize: 20)
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
    
    private let releaseDataLabel: UILabel = {
        let label = UILabel()
        label.text = "Release Date"
        label.tintColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let trackCountLabel: UILabel = {
        let label = UILabel()
        label.text = "10 tracks"
        label.tintColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 5
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.bounces = false
        collectionView.register(SongsCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    private var stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    

}
