//
//  BookCollectionViewController.swift
//  ReadingBookApp
//
//  Created by sae hun chung on 2022/07/20.
//

import UIKit

class BookCollectionViewController: UICollectionViewController {

    private let reuseIdentifier = "BookCollectionViewCell"

    var db: BookDB = BookDB()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCollectionUI()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return db.BookList.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        print(#function)
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? BookCollectionViewCell else { return UICollectionViewCell() }
        
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
    
    
}
