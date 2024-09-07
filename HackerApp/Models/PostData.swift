//
//  PostData.swift
//  HackerApp
//
//  Created by Disha Limbani on 2024-09-02.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
