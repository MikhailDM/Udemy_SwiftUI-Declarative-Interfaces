//
//  NewsArticleViewModel.swift
//  StocksAppSwiftUI
//
//  Created by Mohammad Azam on 1/18/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import Foundation

struct NewsArticleViewModel {
    
    let article: Article
    
    var imageURL: String {
        return self.article.imageURL
    }
    
    var title: String {
        return self.article.title
    }
    
    var publication: String {
        return self.article.publication.uppercased()
    }
    
}
