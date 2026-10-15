//
//  ArticleDTO.swift
//  OfflineNewsApp
//
//  Created by Devendra Kumar on 17/06/26.
//

import Foundation

struct ArticleDTO:Decodable{
    let title: String
     let description: String?
     let author: String?
     let urlToImage: String?
     let publishedAt: String
     let source: SourceDTO
     let url: String
}

struct SourceDTO:Decodable{
    let name:String
}
