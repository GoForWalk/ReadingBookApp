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
