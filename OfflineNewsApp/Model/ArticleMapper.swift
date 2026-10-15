//
//  ArticleMapper.swift
//  OfflineNewsApp
//
//  Created by Devendra Kumar on 17/06/26.
//

import Foundation

extension ArticleDTO{
    
    
    func toDomain()-> Article{
        let formatter = ISO8601DateFormatter()
        
        return Article(
            id: url,
            title: title,
            description: description ?? "",
            author: author,
            imageURL: urlToImage.flatMap(URL.init(string:)),
            publishedAt: formatter.date(from: publishedAt) ?? .now,
            source: source.name,
            articleURL: URL(string: url)!
        )
    }
}
