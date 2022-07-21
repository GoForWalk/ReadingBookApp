//
//  BookCollectionViewController.swift
//  ReadingBookApp
//
//  Created by sae hun chung on 2022/07/20.
//

import UIKit

class BookCollectionViewController: UICollectionViewController {

    static let identifier = "BookCollectionViewController"

    var db: BookDB = BookDB()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionUI()
        setNavigationBar()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return db.BookList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        print(#function)
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BookCollectionViewCell.identifier, for: indexPath) as? BookCollectionViewCell else { return UICollectionViewCell() }
        
        cell.configureCell(bookDB: db, indexPath: indexPath)
                
        return cell
    }
    
    func setCollectionUI() {
        let layout = UICollectionViewFlowLayout()
        
        let spacing: CGFloat = 12
        let oneLineCell: CGFloat = 2
        let spaces: CGFloat = oneLineCell + 1
        
        let width = (UIScreen.main.bounds.width - (spacing * spaces)) / oneLineCell
        
        layout.minimumInteritemSpacing = spacing
        layout.minimumLineSpacing = spacing
        layout.itemSize = CGSize(width: width, height: width)
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        
        collectionView.collectionViewLayout = layout
    }
    
    func setNavigationBar() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(presentSearchViewController))
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = UIStoryboard(name: "Book", bundle: nil).instantiateViewController(withIdentifier: BookDetailViewController.identifier)
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc
    func presentSearchViewController() {
        
        let sb = UIStoryboard(name: "Book", bundle: nil)
        
        let vc = sb.instantiateViewController(withIdentifier: SearchBookTableViewController.identifier)
        
        let nv = UINavigationController(rootViewController: vc)
        
        nv.modalPresentationStyle = .fullScreen
        
        present(nv, animated: true)
    }
}
