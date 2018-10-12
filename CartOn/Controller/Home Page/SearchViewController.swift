//
//  SearchViewController.swift
//  CartOn
//
//  Created by Kristopher Chayadi on 01/10/18.
//  Copyright © 2018 Kristopher Chayadi. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController,UISearchBarDelegate {

    let searchBar = UISearchBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSearchBar()
        searchBar.becomeFirstResponder()
    }
    func createSearchBar(){
        searchBar.placeholder = "Search"
        searchBar.delegate = self
        
        self.navigationItem.titleView = searchBar
        
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
}
