//
//  Router.swift
//  OfflineNewsApp
//
//  Created by Devendra Kumar on 17/06/26.
//

import Foundation

protocol Router{
    var baseURL:String {get}
    var path:String {get}
    var method:HTTPMethod {get}
    var queryItems:[URLQueryItem] {get}
    var headers: [String: String] {get}
    
    func asURLRequest() throws -> URLRequest
    
}



extension Router {
    
    func asURLRequest() throws -> URLRequest {
        
        guard var components = URLComponents(string: baseURL) else {
            throw URLError(.badURL)
        }
        
        components.path = path
        components.queryItems = queryItems.isEmpty ? nil : queryItems
        
        guard let url = components.url else {
            throw URLError(.badURL)
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        
        headers.forEach {
            request.setValue($1, forHTTPHeaderField: $0)
        }
        
        return request
    }
}
