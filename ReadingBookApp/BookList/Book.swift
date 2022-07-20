//
//  Book.swift
//  ReadingBookApp
//
//  Created by sae hun chung on 2022/07/20.
//

import Foundation

struct Book {
    
    var bookTitle: String
    var bookImageURL: String
    var bookRate: Double = 0.0
    var bookDetail: String?
    
}


struct BookDB {
    
    var BookList: [Book] = [
        Book(bookTitle: "aaaaa", bookImageURL: "https://bookthumb-phinf.pstatic.net/cover/224/859/22485918.jpg?udate=20220713"),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: ""),
        Book(bookTitle: "aaaaa", bookImageURL: "")
    ]
}
