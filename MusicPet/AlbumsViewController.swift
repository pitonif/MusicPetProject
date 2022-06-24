//
//  AlbumsViewController.swift
//  MusicPet
//
//  Created by Oleg on 22.06.2022.
//

import UIKit

class AlbumsViewController: UIViewController {
    
    private let tableView: UITableView = {
        let view = UITableView()
        view.backgroundColor = .white
        view.register(AlbumsTableViewCell.self, forCellReuseIdentifier: "cell")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupViews()
        setupDelegate()
        setupNavigationBar()
    }
    
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(tableView)
    }
    
    private func setupDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
        
        searchController.searchBar.delegate = self
    }

    private func setupNavigationBar() {
        navigationItem.title = "Albums"
        
        navigationItem.searchController = searchController
        
        let userInfoButton = createCustomButton(selector: #selector(<#T##@objc method#>))
        navigationItem.rightBarButtonItem = userInfoButton
    }
    
    private func setupSearchBar() {
        searchController.searchBar.placeholder = "Search"
        searchController.obscuresBackgroundDuringPresentation = true
    }
   
    @objc func 
}
