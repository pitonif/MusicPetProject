//
//  AlbumsTableViewCell.swift
//  MusicPet
//
//  Created by Oleg on 24.06.2022.
//

import UIKit

class AlbumsTableViewCell: UITableViewCell {
    
    private let albumLogoImage: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.backgroundColor = .red
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let albumNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Album name"
        label.font = UIFont.systemFont(ofSize: 22)
        label.tintColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let artistNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Artist name"
        label.font = UIFont.systemFont(ofSize: 15)
        label.tintColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let countTrackLabel: UILabel = {
        let label = UILabel()
        label.text = "16 tracks"
        label.font = UIFont.systemFont(ofSize: 15)
        label.tintColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var stackView = UIStackView()

    override func layoutSubviews() {
            super.layoutSubviews()
            
        albumLogoImage.layer.cornerRadius = 10
        }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupViews()
        setupConstraints()
        }
    
    required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    private func setupViews() {
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        self.addSubview(albumLogoImage)
        self.addSubview(albumNameLabel)
        
        stackView = UIStackView(arrangedSubviews: [artistNameLabel,
                                                   countTrackLabel],
                                axis: .horizontal,
                                spacing: 10,
                                distribution: .equalCentering)
        
        self.addSubview(stackView)
        
    }
    
    private func setupConstraints() {
       
              NSLayoutConstraint.activate([
                albumLogoImage.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                albumLogoImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
                albumLogoImage.heightAnchor.constraint(equalToConstant: 60),
                albumLogoImage.widthAnchor.constraint(equalToConstant: 60)
               ])
               
               NSLayoutConstraint.activate([
                   albumNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
                   albumNameLabel.leadingAnchor.constraint(equalTo: albumLogoImage.trailingAnchor, constant: 10),
                   albumNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)
               ])
               
               NSLayoutConstraint.activate([
                   stackView.topAnchor.constraint(equalTo: albumNameLabel.bottomAnchor, constant: 10),
                   stackView.leadingAnchor.constraint(equalTo: albumLogoImage.trailingAnchor, constant: 10),
                   stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10)
               ])
    }
}
