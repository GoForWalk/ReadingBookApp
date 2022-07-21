//
//  SearchBookTableViewController.swift
//  ReadingBookApp
//
//  Created by sae hun chung on 2022/07/21.
//

import UIKit

class SearchBookTableViewController: UITableViewController {

    static let identifier = "SearchBookTableViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigationBar()
    }
    
    func setNavigationBar() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"), style: .plain, target: self, action: #selector(dismissModal))
    }
    
    @objc
    func dismissModal() {
        dismiss(animated: true)
    }
}
