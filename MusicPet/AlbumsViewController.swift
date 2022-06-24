//
//  AlbumsViewController.swift
//  MusicPet
//
//  Created by Oleg on 22.06.2022.
//

import UIKit

class AlbumsViewController: UIViewController {
    
    let tableView: UITableView = {
        let view = UITableView()
        view.backgroundColor = .white
        view.register(AlbumsTableViewCell.self, forCellReuseIdentifier: "cell")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

       
    }
    

   
}
