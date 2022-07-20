//
//  BookCollectionViewCell.swift
//  ReadingBookApp
//
//  Created by sae hun chung on 2022/07/20.
//

import UIKit
import Kingfisher

class BookCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookImageView: UIImageView!
    @IBOutlet weak var bookRateLabel: UILabel!
    
    let colorList: [UIColor] = [
        #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1), #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), #colorLiteral(red: 0.8446564078, green: 0.5145705342, blue: 1, alpha: 1), #colorLiteral(red: 0.476841867, green: 0.5048075914, blue: 1, alpha: 1)
    ]
    
    func configureCell(bookDB: BookDB, indexPath: IndexPath) {
        
        self.backgroundColor = colorList.randomElement()
        self.layer.cornerRadius = 12
        self.clipsToBounds = true
        
        let book = bookDB.BookList[indexPath.row]
        
        setTitleLabel(bookTitle: book.bookTitle)
        setRateLabel(bookRate: book.bookRate)
        getUIImage(urlString: book.bookImageURL)
        
    }
    
    func setTitleLabel(bookTitle: String){
        
        bookTitleLabel.text = bookTitle
        bookTitleLabel.textColor = .white
        bookTitleLabel.font = .systemFont(ofSize: 24, weight: .semibold)
        
    }
    
    func setRateLabel(bookRate: Double) {
        bookRateLabel.text = "\(bookRate)"
        bookRateLabel.textColor = .white
        bookRateLabel.font = .systemFont(ofSize: 12, weight: .light)
        
    }
    
    func getUIImage(urlString: String) {
        
        if urlString.isEmpty { return }
        
        let imgUrl = URL(string: urlString)
        bookImageView.kf.setImage(with: imgUrl)
        
    }
    
}
