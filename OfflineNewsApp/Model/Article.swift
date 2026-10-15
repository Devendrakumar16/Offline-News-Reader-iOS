//
//  Article.swift
//  OfflineNewsApp
//
//  Created by Devendra Kumar on 17/06/26.
//

import Foundation

struct Article: Identifiable, Equatable{
    let id: String
    let title: String
    let description:String
    let author: String?
    let imageURL: URL?
    let publishedAt: Date
    let source:String
    let articleURL: URL
    
    
}
