//
//  APIErrors.swift
//  OfflineNewsApp
//
//  Created by Devendra Kumar on 17/06/26.
//
import Foundation

enum APIError:Error{
    case invalidResponse
    case invalidStatusCode(Int)
    case decodingFailed
    case network(Error)
}
