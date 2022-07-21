//
//  BookDetailViewController.swift
//  ReadingBookApp
//
//  Created by sae hun chung on 2022/07/21.
//

import UIKit

class BookDetailViewController: UIViewController {

    static let identifier = "BookDetailViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Book Detail"
    }
    
    @IBAction func searchWebButtonTapped(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Book", bundle: nil).instantiateViewController(withIdentifier: BookDetailWebSearchViewController.identifier)
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
